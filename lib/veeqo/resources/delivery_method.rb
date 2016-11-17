# DeliveryMethods
# Resources related to the DeliveryMethods in the API.
# https://developers.veeqo.com/docs/versions/1-0-0-beta/resources/delivery_methods

module Veeqo
  class DeliveryMethod < Resource
    include Veeqo::ResourceActions.new(uri: 'delivery_methods/%d', disable: [:destroy_all])

    property :id
    property :cost
    property :name
    property :user_id
    property :created_at
    property :updated_at
  end
end
