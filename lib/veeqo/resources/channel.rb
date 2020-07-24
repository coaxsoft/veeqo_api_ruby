# Channels
# Resources related to the channels in the API.
# http://docs.veeqo.apiary.io/#reference/stores/store-collection/list-all-stores

module Veeqo
  class Channel < Resource
    include Veeqo::ResourceActions.new(uri: 'channels/%d', disable: [:destroy_all])
  end
end
