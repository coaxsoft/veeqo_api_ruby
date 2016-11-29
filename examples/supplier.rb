require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List suppliers
@suppliers = Veeqo::Supplier.all
puts @suppliers

# Create supplier
supplier_data = {
  name: 'test_supplier',
  address_line_1: 'test',
  address_line_2: 'test',
  city: 'test',
  region: 'test',
  country: 'test',
  post_code: 'test',
  sales_contact_name: 'test',
  sales_contact_email: 'test'
}
puts Veeqo::Supplier.create(supplier_data)

@supplier = @suppliers[0]
supplier_data = {
  name: 'test_supplier_1'
}
puts Veeqo::Supplier.update(@supplier, supplier_data)

puts Veeqo::Supplier.destroy(@supplier)
