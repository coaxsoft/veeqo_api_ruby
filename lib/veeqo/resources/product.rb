# Products
# Resources related to the products in the API.
# http://docs.veeqo.apiary.io/#reference/products/product-collection/list-all-products

module Veeqo
  class Product < Resource
    include Veeqo::ResourceActions.new uri: 'products/%d'

    def self.update_suppliers(resource_id, params = {})
      include Veeqo::ResourceActions.new uri: 'supplier_product_variants'
      raise ArgumentError if resource_id.nil?
      params[:product_id] = resource_id
      get path.build, params
    end
  end
end
