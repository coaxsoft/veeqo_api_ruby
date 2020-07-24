# Stock Entries
# Resources related to the stock entries in the API.
# http://docs.veeqo.apiary.io/#reference/stock-entries/stock-entry

module Veeqo
  class StockEntry < Resource
    include Veeqo::SubresourceActions.new(uri: 'sellables/%d/warehouses/%d/stock_entry', disable: %i[destroy destroy_all all create])
  end
end
