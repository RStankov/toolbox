# Matcher for matching respond with

## Installation

* copy to ```spec/support/controllers/respond_with```
* include spec_helper as ```config.include SpecSupport::Controllers::RespondWith, type: :controller```


## Usage

```ruby

require 'spec_helper'

describe ProductsController do
  describe "GET show" do
    product = double
    allow(Product).to receive(:find).with('1') { product }
    get :id => 1
    expect(controller).to respond_with product
  end
end

```

## Notice

When this module is included it stubs all controllers rendering. So you won't get failures for missing views or invalid url locations.
