# Allocations
# Resources related to the allocations in the API.
# http://docs.veeqo.apiary.io/#reference/allocations/allocation-collection/create-a-new-allocation

module Veeqo
  class Allocation < Resource
    include Veeqo::SubresourceActions.new(uri: 'orders/%d/allocations/%d', disable: %i[destroy_all all find])
  end
end
