require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List order
@orders = Veeqo::Order.all
puts @orders

# Get a order
@order = @orders[0]
puts Veeqo::Order.find(@order.id)

# Create a order
customer = Veeqo::Customer.create(email: 'example@email.com')
channel = Veeqo::Channel.create(name: 'Example')
product = Veeqo::Product.all.last

@order = Veeqo::Order.create(
  order: {
    channel_id: channel.id,
    customer_id: customer.id,
    line_items_attributes: [
      {
        quantity: 5,
        sellable_id: product.sellables.first[:id]
      }
    ]
  }
)
puts @order

# Update a order
puts Veeqo::Order.update(@order.id, notes: 'example')

# Delete a order
puts Veeqo::Order.destroy(@order.id)
