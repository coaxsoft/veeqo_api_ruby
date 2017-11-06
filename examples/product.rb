require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List products
@products = Veeqo::Product.all
puts @products

# Get a product
@product = @products[0]
puts Veeqo::Product.find(@product.id)

# Create a product
@product = Veeqo::Product.create(title: 'Example')
puts @product

# Update a product
puts Veeqo::Product.update(@product.id, notes: 'example')

# Delete a product
puts Veeqo::Product.destroy(@product.id)

# Unofficial: Update suppliers for product. For creating purchase order.
puts Veeqo::Product.update_suppliers(@product.id)

# Get products quantity by params

puts Veeqo::Product.count(query: 'Diesel', since_id: 123_456_789)
