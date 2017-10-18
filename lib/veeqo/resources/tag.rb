module Veeqo
  class Tag < Resource
    include Veeqo::ResourceActions.new uri: 'tags/%d', disable: %i[destroy_all count]
    property :colour
    property :company_id
    property :id
    property :name
    property :taggings_count
  end
end