# Shipments
# Resources related to the shipments in the API.
# http://docs.veeqo.apiary.io/#reference/shipments/shipment-collection/create-a-shipment

module Veeqo
  class Shipment < Resource
    include Veeqo::ResourceActions.new(uri: 'shipments/%d', disable: %i[find all count destroy_all])

    property :allocation_id
    property :carrier
    property :carrier_id
    property :created_at
    property :id
    property :notify_customer
    property :order_id
    property :shipped_by_id
    property :tracking_number
    property :update_remote_order
    property :weight
  end
end
