require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

@order = Veeqo::Order.all.first
@warehouse = Veeqo::Warehouse.all.first
@sellable = @order[:line_items].first[:sellable]

# Create allocation
@allocation = Veeqo::Allocation.create(@order.id, warehouse_id: @warehouse.id, connection: connection)

# Update allocation
Veeqo::Allocation.update(@order.id,
                         @allocation.id,
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
