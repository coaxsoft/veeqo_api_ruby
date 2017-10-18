# Stock Entries
# Resources related to the stock entries in the API.
# http://docs.veeqo.apiary.io/#reference/stock-entries/stock-entry

module Veeqo
  class StockEntry < Resource
    include Veeqo::SubresourceActions.new(uri: 'sellables/%d/warehouses/%d/stock_entry', disable: %i[destroy destroy_all all find create])
    property :allocated_stock_level
    property :available_stock_level
    property :id
    property :incoming_stock_level
    property :infinite
    property :location
    property :physical_stock_level
    property :sellable_id
    property :sellable_on_hand_value
    property :stock_running_low
    property :updated_at
    property :warehouse
    property :warehouse_id
  end
end
