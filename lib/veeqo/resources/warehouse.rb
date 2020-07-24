# Warehouses
# Resources related to the Warehouses in the API.
# http://docs.veeqo.apiary.io/#reference/warehouses/warehouse-collection

module Veeqo
  class Warehouse < Resource
    include Veeqo::ResourceActions.new(uri: 'warehouses/%d', disable: %i[create update destroy destroy_all])
  end
end
