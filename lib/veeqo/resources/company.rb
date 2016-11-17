# Company
# Metadata that describes the Company.
# https://developers.veeqo.com/docs/versions/1-0-0-beta/resources/company

module Veeqo
  class Company < Resource
    include Veeqo::Request.new 'current_company'

    property :id

    def self.info(params = {})
      get path.build, params
    end

    def self.check_connection
      info
      true
    rescue Veeqo::Unauthorized
      false
    end
  end
end
