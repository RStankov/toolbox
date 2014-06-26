# Matcher for matching respond with

## Installation

* copy `respond_with_matcher.rb` to `spec/support/controllers/respond_with.rb`
* include spec_helper as `config.include SpecSupport::Controllers::RespondWith, type: :controller`


## Usage

```ruby

require 'spec_helper'

describe ProductsController do
  let(:product) { double }

  describe "GET 'update'" do
    it "responds with a product" do
      allow(Product).to receive(:find).with('1') { product }
      get :show, id: 1
      expect(controller).to respond_with product
    end
  end

  describe "PUT 'update'" do
    before do
      allow(Product).to receive(:update) { product }
    end

    it "updates a product" do
      put :update, id: 1, product: {name: 'Test'}
      expect(Product).to have_received(:update).with('1', 'name' => 'Test')
    end

    it "responds with a product" do
      put :update, id: 1, product: {}
      expect(controller).to respond_with product
    end
  end
end

```

## Notice

When this module is included it stubs all controllers rendering. So you won't get failures for missing views or invalid url locations.
