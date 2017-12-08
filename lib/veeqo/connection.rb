module Veeqo
  module Connection
    HEADERS = {
      'accept' => 'application/json'
    }.freeze

    def self.build(config)
      Faraday.new(url: config.api_url) do |conn|
        conn.options[:timeout] = 120
        conn.request :json
        conn.headers = HEADERS
        conn.use Veeqo::Middleware::Auth, config
        conn.use Veeqo::Middleware::HttpException
        conn.adapter Faraday.default_adapter
      end
    end
  end
end
