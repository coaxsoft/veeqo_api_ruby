module Veeqo
  class ResourceActions < Module
    attr_reader :options

    def initialize(options = {})
      @options = options
      define_singleton_method :_options do
        options
      end
    end

    def included(base)
      base.send(:include, Request.new(options[:uri]))
      base.extend(ClassMethods)
      options[:disable] ||= []
      methods = ClassMethods.public_instance_methods & options[:disable]
      class << base
        self
      end.class_eval do
        methods.each { |filtered_name| undef_method filtered_name }
      end
    end

    module ClassMethods
      def all(params = {})
        get path.build, params
      end

      def find(resource_id, params = {})
        raise ArgumentError if resource_id.nil?
        get path.build(resource_id), params
      end

      def create(params = {})
        post path.build, params
      end

      def update(resource_id, params = {})
        raise ArgumentError if resource_id.nil?
        put path.build(resource_id), params
      end

      def destroy(resource_id, params = {})
        raise ArgumentError if resource_id.nil?
        delete path.build(resource_id), params
      end

      def destroy_all(params = {})
        delete path.build, params
      end

      def count(params = {})
        quantity path.build, params
      end
    end
  end
end
