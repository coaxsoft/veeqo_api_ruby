# DeliveryMethods
# Resources related to the DeliveryMethods in the API.
# http://docs.veeqo.apiary.io/#reference/delivery-methods/delivery-methods-collection/list-all-delivery-methods

module Veeqo
  class DeliveryMethod < Resource
    include Veeqo::ResourceActions.new(uri: 'delivery_methods/%d', disable: %i[destroy_all count])
  end
end
