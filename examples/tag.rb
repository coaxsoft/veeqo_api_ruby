require 'veeqo'

Veeqo.configure do |config|
  config.api_key = ENV['VEEQO_API_KEY']
end

# List tags
@tags = Veeqo::Tag.all
puts @tags

# Get a tag
@tag = @tags[0]
puts Veeqo::Tag.find(@tag.id)

# Create a tag
@tag = Veeqo::Tag.create(colour: '#ffA501', name: 'Test')
puts @product

# Update a tag
Veeqo::Tag.update(@tag.id, name: 'BestTagEver')

# Delete a tag
puts Veeqo::Tag.destroy(@tag.id)
