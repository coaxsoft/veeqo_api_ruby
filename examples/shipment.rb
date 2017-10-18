@order = Veeqo::Order.all(status: 'awaiting_fulfillment', connection: connection).first
@allocation = @order[:allocations].first

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