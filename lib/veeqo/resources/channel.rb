# Channels
# Resources related to the channels in the API.
# http://docs.veeqo.apiary.io/#reference/stores/store-collection/list-all-stores

module Veeqo
  class Channel < Resource
    include Veeqo::ResourceActions.new(uri: 'channels/%d', disable: [:destroy_all])

    property :id
    property :type_code
    property :created_by_id
    property :name
    property :currency_code
    property :state
    property :url
    property :shopify_url
    property :ebay_url
    property :ebay_site_code_id
    property :country
    property :region
    property :city
    property :address_line_1
    property :address_line_2
    property :post_code
    property :pulled_products_at
    property :pulled_orders_at
    property :pending_setup
    property :seller_id
    property :marketplace_id
    property :mws_auth_token
    property :deleted_at
    property :deleted_by_id
    property :api2cart_store_key
    property :bridge_url
    property :bridge_verified
    property :pull_pending_orders
    property :default_send_shipment_email
    property :automatic_product_linking_disabled
    property :update_remote_order
    property :successfully_fetched_stock_levels_at
    property :create_product_if_unmatched
    property :skip_title_matching
    property :email
    property :skip_fba_orders_and_products
    property :pull_stock_level_required
    property :pull_historical_orders
    property :adjust_orders_tax_rate
    property :send_notification_emails_to_customers
    property :end_ebay_listing_on_out_of_stock
    property :update_product_attributes
    property :max_qty_to_advert
    property :min_threshold_qty
    property :percent_of_qty
    property :always_set_qty
    property :veeqo_dictates_stock_level
    property :with_fba
    property :first_sync_finish_notice_marked_as_read
    property :pull_unpaid_shopify_orders
    property :create_product_on_ended_listings
    property :channel_warehouses
    property :warehouses
    property :stock_level_update_requests
    property :channel_specific
    property :time_since_product_sync
    property :time_since_order_sync
    property :time_since_tried_fetch_stock_level
    property :time_since_successfully_fetch_stock_level
    property :default_warehouse
    property :remote
  end
end
