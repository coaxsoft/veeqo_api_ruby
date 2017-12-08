# PurchaseOrder
# Resources related to the purchase order in the API.
# http://docs.veeqo.apiary.io/#reference/purchase-orders/purchase-order-collection/list-all-purchase-orders

module Veeqo
  class PurchaseOrder < Resource
    include Veeqo::ResourceActions.new(uri: 'purchase_orders/%d', disable: %i[update destroy destroy_all])

    property :id
    property :number
    property :user_id
    property :supplier_id
    property :destination_warehouse_id
    property :state
    property :estimated_delivery_days
    property :actual_delivery_days
    property :estimated_return_days
    property :actual_return_days
    property :started_at
    property :received_at
    property :returned_at
    property :completed_at
    property :started_or_returned_at_calc
    property :arrival_at_calc
    property :total_calc
    property :created_by_id
    property :updated_by_id
    property :created_at
    property :updated_at
    property :send_to_supplier
    property :line_items
    property :supplier

    def self.create(params = {})
      post path.build, params
    rescue Oj::ParseError
      nil
    end
  end
end
