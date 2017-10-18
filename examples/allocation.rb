Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# Create allocation
Veeqo::Allocation.create(@order_id, warehouse_id: @warehouse_id, connection: connection)

# Update allocation

Veeqo::Allocation.update(@order.id,
                         allocation.id,
                         warehouse_id: @warehouse.id,
                         line_items_attributes:
                           [
                             {
                               sellable_id: @sellable.id,
                               quantity: 3
                             }
                           ])

# Destroy allocation

Veeqo::Allocation.destroy(@order.id, @allocation.id)
