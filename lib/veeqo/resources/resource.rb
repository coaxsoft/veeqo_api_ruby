require 'veeqo/request'
require 'veeqo/resource_actions'
require 'veeqo/subresource_actions'

module Veeqo
  class Resource < Hashie::Trash
    include Hashie::Extensions::MethodAccess
    include Hashie::Extensions::IgnoreUndeclared
  end
end
