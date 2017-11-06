require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List customers
@customers = Veeqo::Customer.all
puts @customers

# Get a Customer
@customer = @customers[0]
puts Veeqo::Customer.find(@customer.id)

# Create a Customer
@customer = Veeqo::Customer.create(email: 'example@email.com')
puts @customer

# Update a Customer
puts Veeqo::Customer.update(@customer.id, phone: '1234567890')

# Customer's quantity by params
puts Veeqo::Customer.count(query: 'example@example.com')
