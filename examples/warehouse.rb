require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List warehouses
@warehouses = Veeqo::Warehouse.all
puts @warehouses

# Get a warehouse
@warehouse = @warehouses[0]
puts Veeqo::Warehouse.find(@warehouse.id)

# Get warehouse quantity by params
puts Veeqo::Warehouse.count(query: 'Example')
