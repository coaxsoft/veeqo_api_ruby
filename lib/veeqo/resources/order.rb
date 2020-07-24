# Orders
# Resources related to the orders in the API.
# http://docs.veeqo.apiary.io/#reference/orders/order-collection

module Veeqo
  class Order < Resource
    include Veeqo::ResourceActions.new(uri: 'orders/%d', disable: %i[destroy destroy_all])

    def self.bulk_tagging(resource_ids, tag_ids, params = {})
      raise ArgumentError if resource_ids.empty? || tag_ids.empty?
      post 'https://app.veeqo.com/bulk_tagging', { order_ids: [*resource_ids], tag_ids: [*tag_ids] }.merge(params)
    end
  end
end
