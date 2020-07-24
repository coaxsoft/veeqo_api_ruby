# PurchaseOrder
# Resources related to the purchase order in the API.
# http://docs.veeqo.apiary.io/#reference/purchase-orders/purchase-order-collection/list-all-purchase-orders

module Veeqo
  class PurchaseOrder < Resource
    include Veeqo::ResourceActions.new(uri: 'purchase_orders/%d', disable: %i[update destroy destroy_all])

    def self.create(params = {})
      post path.build, params
    rescue Oj::ParseError
      nil
    end
  end
end
