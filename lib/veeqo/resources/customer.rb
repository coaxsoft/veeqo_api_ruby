# customers
# Resources related to the customers in the API.
# http://docs.veeqo.apiary.io/#reference/customers/customer-collection/list-all-customers

module Veeqo
  class Customer < Resource
    include Veeqo::ResourceActions.new(uri: 'customers/%d', disable: %i[destroy destroy_all])

    property :id
    property :email
    property :phone
    property :mobile
    property :created_by_id
    property :billing_address
    property :shipping_addresses
  end
end
