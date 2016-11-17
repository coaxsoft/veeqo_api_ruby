require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List delivery_methods
@delivery_methods = Veeqo::DeliveryMethod.all
puts @delivery_methods

# Get a delivery_method
@delivery_method = @delivery_methods[0]
puts Veeqo::DeliveryMethod.find(@delivery_method.id)

# Create a delivery_method
@delivery_method = Veeqo::DeliveryMethod.create(name: 'Example')
puts @delivery_method

# Update a delivery_method
puts Veeqo::DeliveryMethod.update(@delivery_method.id, name: 'example')

# Delete a delivery_method
puts Veeqo::DeliveryMethod.destroy(@delivery_method.id)
