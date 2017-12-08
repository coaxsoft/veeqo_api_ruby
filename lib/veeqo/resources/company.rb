# Company
# Metadata that describes the Company.
# http://docs.veeqo.apiary.io/#reference/company/company/view-company-detail

module Veeqo
  class Company < Resource
    include Veeqo::Request.new 'current_company'

    property :id
    property :name
    property :created_at
    property :updated_at
    property :card_valid
    property :stripe_customer_id
    property :has_right_to_use_veeqo
    property :subscription_status
    property :billing_period_started
    property :chargify_product_handle
    property :chargify_current_plan
    property :trial_end_date
    property :can_change_subscription_plan
    property :has_ever_created_remote_channel
    property :owner
    property :subscription_plan
    property :employees
    property :guide_progress
    property :settings

    def self.info(params = {})
      get path.build, params
    end

    def self.update(params = {})
      put path.build, params
    end

    def self.check_connection(params = {})
      info(params)
      true
    rescue Veeqo::Unauthorized
      false
    end

    def self.current_user(params = {})
      include Veeqo::ResourceActions.new uri: 'current_user'
      get path.build, params
    end
  end
end
