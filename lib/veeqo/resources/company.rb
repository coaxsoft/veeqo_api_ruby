# Company
# Metadata that describes the Company.
# http://docs.veeqo.apiary.io/#reference/company/company/view-company-detail

module Veeqo
  class Company < Resource
    include Veeqo::Request.new 'current_company'

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
