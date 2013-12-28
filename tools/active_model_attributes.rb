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
      def attributes(*attributes)
        @attribute_names.push *attributes
        attr_accessor *attributes
      end

      def attribute_names
        @attribute_names
      end
    end
  end
end

