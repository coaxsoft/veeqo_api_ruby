module Veeqo
  class Allocation < Resource
    include Veeqo::SubresourceActions.new(uri: 'orders/%d/allocations/%d', disable: [:destroy_all, :all, :find])

    def self.destroy(parent_id, resource_id, params = {})
      raise ArgumentError if [parent_id, resource_id].any?(&:nil?)
      delete path.build([parent_id, resource_id]), params
      ''
    end

    def self.update(parent_id, resource_id, params = {})
      raise ArgumentError if [parent_id, resource_id].any?(&:nil?)
      put path.build([parent_id, resource_id]), params
    end
  end
end
