# Warehouses
# Resources related to the Warehouses in the API.
# https://developers.veeqo.com/docs/versions/1-0-0-beta/resources/warehouses

module Veeqo
  class Warehouse < Resource
    include Veeqo::ResourceActions.new(uri: 'warehouses/%d', disable: [:create, :update, :destroy, :destroy_all])

    property :id
    property :address_line_1
    property :address_line_2
    property :city
    property :click_and_collect_days
    property :click_and_collect_enabled
    property :country
    property :created_at
    property :created_by_id
    property :default_min_reorder
    property :deleted_at
    property :deleted_by_id
    property :inventory_type_code
    property :name
    property :phone
    property :post_code
    property :region
    property :updated_at
    property :updated_by_id
    property :requested_carrier_account
    property :on_hand_value
  end
end
