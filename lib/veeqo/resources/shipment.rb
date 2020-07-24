# Shipments
# Resources related to the shipments in the API.
# http://docs.veeqo.apiary.io/#reference/shipments/shipment-collection/create-a-shipment

module Veeqo
  class Shipment < Resource
    include Veeqo::ResourceActions.new(uri: 'shipments/%d', disable: %i[find all count destroy_all])
  end
end
