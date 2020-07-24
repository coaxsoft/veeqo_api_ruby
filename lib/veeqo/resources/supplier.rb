# Suppliers
# Resources related to the suppliers in the API.
# http://docs.veeqo.apiary.io/#reference/suppliers/supplier-collection

module Veeqo
  class Supplier < Resource
    include Veeqo::ResourceActions.new(uri: 'suppliers/%d', disable: %i[find create destroy destroy_all])

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
