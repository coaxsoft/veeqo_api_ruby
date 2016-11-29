require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# Company info
puts Veeqo::Company.info

# Check connection
puts Veeqo::Company.check_connection

# Unofficial: Current user info. For creating purchase order.
Veeqo::Company.current_user
