# customers
# Resources related to the customers in the API.
# https://developers.veeqo.com/docs/versions/1-0-0-beta/resources/customers

module Veeqo
  class Supplier < Resource
    include Veeqo::ResourceActions.new(uri: 'suppliers/%d', disable: [:find, :destroy, :destroy_all])

    property :id
    property :name
    property :address_line_1
    property :address_line_2
    property :city
    property :region
    property :country
    property :post_code
    property :sales_contact_name
    property :sales_contact_email
    property :accounting_contact_name
    property :accounting_contact_email
    property :credit_limit
    property :currency_code
    property :created_by_id
    property :updated_by_id
    property :deleted_at
    property :deleted_by_id
    property :created_at
    property :updated_at
    property :sales_phone_number
    property :accounting_phone_number
    property :bank_account_number
    property :bank_sort_code
    property :bank_name
  end
end
