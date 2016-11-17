require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List purchase orders
@purchase_orders = Veeqo::PurchaseOrder.all
puts @purchase_orders
