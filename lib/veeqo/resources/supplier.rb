# Suppliers
# Resources related to the suppliers in the API.
# http://docs.veeqo.apiary.io/#reference/suppliers/supplier-collection

module Veeqo
  class Supplier < Resource
    include Veeqo::ResourceActions.new(uri: 'suppliers/%d', disable: %i[find create destroy destroy_all])

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

    def self.create(params = {})
      post path.build, params
    rescue Veeqo::NotAccepted
      nil
    end

    def self.update(resource_id, params = {})
      raise ArgumentError if resource_id.nil?
      put path.build(resource_id), params
    rescue Veeqo::NotAccepted
      nil
    end
  end
end
