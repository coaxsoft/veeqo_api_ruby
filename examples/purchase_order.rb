require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List purchase orders
@purchase_orders = Veeqo::PurchaseOrder.all
puts @purchase_orders

# Unofficial: Create a purchase order
supplier = Veeqo::Supplier.all.first
destination_warehouse = Veeqo::Warehouse.all.first
current_user = Veeqo::Company.current_user
product = Veeqo::Product.all.last

# should update suppliers for order products
Veeqo::Product.update_suppliers(product.id)

# don't return created oreder
Veeqo::PurchaseOrder.create(
  purchase_order: {
    number: 'test',
    supplier_id: supplier.id,
    destination_warehouse_id: destination_warehouse.id,
    purchase_order_product_variants_attributes: [
      {
        product_variant_id: product.sellables.first[:id],
        cost: '9.99', # string only
        quantity: '3', # string only
        created_by_id: current_user.id.to_s # string only
      }
    ]
  }
)

# Delete a order
puts Veeqo::Order.destroy(Veeqo::PurchaseOrder.all.first.id)

# Show purchase orders quantity by params
puts Veeqo::PurchaseOrder.count(show_complete: true)
