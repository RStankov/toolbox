module ActiveModel
  module Validations
    class ValidValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        unless value.valid?
          value.errors.each do |name, value|
            record.errors.add name, value
          end
        end
      end
    end
  end
end

