# Products
# Resources related to the products in the API.
# https://developers.veeqo.com/docs/versions/1-0-0-beta/resources/products

module Veeqo
  class Product < Resource
    include Veeqo::ResourceActions.new uri: 'products/%d'

    property :id
    property :active_channels
    property :brand
    property :channel_products
    property :created_at
    property :created_by_id
    property :deleted_at
    property :deleted_by_id
    property :description
    property :estimated_delivery
    property :hs_tariff_number
    property :image
    property :inventory
    property :main_image
    property :main_image_src
    property :notes
    property :on_hand_value
    property :origin_country
    property :product_tax_rate_id
    property :sellables
    property :stock_level_sync_status
    property :tags
    property :tax_rate
    property :title
    property :total_allocated_stock_level
    property :total_available_stock_level
    property :total_quantity_sold
    property :total_stock_level
    property :updated_at
    property :updated_by_id
    property :web_meta_description
    property :web_meta_keywords
    property :web_meta_title
    property :web_page_title
    property :web_page_url
    property :weight
  end
end
