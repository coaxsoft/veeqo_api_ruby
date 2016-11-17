require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List suppliers
@suppliers = Veeqo::Supplier.all
puts @suppliers
