# Allocations
# Resources related to the allocations in the API.
# http://docs.veeqo.apiary.io/#reference/allocations/allocation-collection/create-a-new-allocation

module Veeqo
  class Allocation < Resource
    include Veeqo::SubresourceActions.new(uri: 'orders/%d/allocations/%d', disable: %i[destroy_all all find])

    property :id
    property :additional_order_level_taxless_discount
    property :allocated_completely
    property :allocations
    property :allocated_by_id
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
    property :fulfillment_channel_order
    property :international
    property :is_amazon_premium_order
    property :is_amazon_prime
    property :line_items
    property :matched_parcel_properties_criteria
    property :notes
    property :number
    property :order_id
    property :packed_completely
    property :payment
    property :picked_completely
    property :receipt_printed
    property :recommended_shipping_options
    property :refund_amount
    property :restock_shipped_items
    property :returns
    property :send_notification_email
    property :send_refund_email
    property :shipment
    property :shipped_at
    property :status
    property :subtotal_price
    property :tags
    property :till_id
    property :total_discounts
    property :total_fees
    property :total_price
    property :total_tax
    property :total_weight
    property :updated_at
    property :updated_by
    property :weight_unit
    property :warehouse
  end
end
