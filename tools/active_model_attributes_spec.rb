require 'spec_helper'

module ActiveModel
  describe Attributes do
    describe '.attributes_names' do
      it "returns attribute names" do
        klass = Class.new do
          include Attributes
          attributes :name, :age
        end

        expect(klass.attribute_names).to eq [:name, :age]
      end
    end

    describe '#initialize' do
      it "can be called with no arguments" do
        klass = Class.new do
          include Attributes
        end

        expect { klass.new }.not_to raise_error
      end

      it 'assign the passed attributes' do
        klass = Class.new do
          include Attributes
          attributes :price
        end

        object = klass.new price: '$5'

        expect(object.price).to eq '$5'
      end

      it "ignores invalid attributes" do
        klass = Class.new do
          include Attributes
        end

        expect { klass.new invalid: 'attribute' }.not_to raise_error
      end

      it 'handles HashWithIndifferentAccess hashes' do
        klass = Class.new do
          include Attributes
          attributes :price
        end

        hash = ActiveSupport::HashWithIndifferentAccess.new "price" => "$5"
        object = klass.new price: '$5'

        expect(object.price).to eq '$5'
      end
    end

    describe '#attributes' do
      it 'returns attributes' do
        klass = Class.new do
          include Attributes
          attributes :name
        end

        object = klass.new name: 'Name'
        expect(object.attributes).to eq name: 'Name'
      end
    end
  end
end

