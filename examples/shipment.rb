require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

@order = Veeqo::Order.all(status: 'awaiting_fulfillment').first
@allocation = @order[:allocations].first

# Create shipment
@shipment = {
  shipment: {
    carrier_id: 3,
    notify_customer: false,
    update_remote_order: false
  },
  allocation_id: @allocation[:id],
  order_id: @order.id
}

puts Veeqo::Shipment.create(@shipment)
