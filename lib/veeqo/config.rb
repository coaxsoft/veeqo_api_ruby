module Veeqo
  class Config < Hashie::Mash
    DEFAULTS = {
      base_url: 'https://api.veeqo.com'
    }.freeze

    def api_url
      DEFAULTS[:base_url]
    end
  end
end
