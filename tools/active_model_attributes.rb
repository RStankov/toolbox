module ActiveModel
  module Attributes
    extend ActiveSupport::Concern

    included do
      @attribute_names = []
    end

    def initialize(attributes = {})
      self.attributes = attributes
    end

    def attributes=(attributes)
      attributes.slice(*self.class.attribute_names).each do |name, value|
        public_send "#{name}=", value
      end
    end

    def attributes
      Hash[self.class.attribute_names.map { |name| [name, public_send(name)] }]
    end

    module ClassMethods
      def attributes(*attributes, delegate: nil, prefix: nil, allow_nil: nil)
        @attribute_names.push *attributes


        if delegate.nil?
          attr_accessor *attributes
        else
          self.delegate *attributes, to: delegate, prefix: prefix, allow_nil: allow_nil
          self.delegate *attributes.map { |attr| "#{attr}=" }, to: delegate, prefix: prefix, allow_nil: allow_nil
        end
      end

      def attribute_names
        @attribute_names
      end
    end
  end
end
