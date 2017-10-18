# Orders
# Resources related to the orders in the API.
# https://developers.veeqo.com/docs/versions/1-0-0-beta/resources/orders

module Veeqo
  class Order < Resource
    include Veeqo::ResourceActions.new(uri: 'orders/%d', disable: %i[destroy destroy_all])

    property :id
    property :allocated_completely
    property :allocations
    property :buyer_user_id
    property :cancel_reason
    property :cancelled_at
    property :cancelled_by
    property :channel
    property :created_at
    property :created_by
    property :customer
    property :customer_note
    property :customer_viewable_notes
    property :deliver_to
    property :delivery_cost
    property :delivery_method
    property :due_date
    property :employee_notes
    property :fulfilled_by_amazon
    property :international
    property :line_items
    property :notes
    property :number
    property :packed_completely
    property :payment
    property :picked_completely
    property :receipt_printed
    property :refund_amount
    property :returns
    property :send_notification_email
    property :send_refund_email
    property :shipped_at
    property :status
    property :subtotal_price
    property :tags
    property :till_id
    property :total_discounts
    property :total_price
    property :total_tax
    property :updated_at
    property :updated_by

    def self.destroy(resource_id, params = {})
      raise ArgumentError if resource_id.nil?
      delete path.build(resource_id), params
    rescue Veeqo::NotFound
      nil
    end

  end
end
