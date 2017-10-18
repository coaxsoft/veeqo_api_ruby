require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List channels
@channels = Veeqo::Channel.all
puts @channels

# Get a channel
@channel = @channels[0]
puts Veeqo::Channel.find(@channel.id)

# Create a channel
@channel = Veeqo::Channel.create(name: 'Example')
puts @channel

# Update a channel
puts Veeqo::Channel.update(@channel.id, currency_code: 'USD')

# Delete a channel
puts Veeqo::Channel.destroy(@channel.id)

# Channel's quantity by params
puts Veeqo::Channel.count(query: 'Example')
