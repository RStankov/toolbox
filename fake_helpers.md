# Fake errors of ActiveModel::Errors

## Installation

* copy `fake_errors.rb` to `spec/support/fake_errors.rb`


## Usage

```ruby

require 'spec_helper'

describe PriceValidaor do
  it "validates price is more than 0" do
    product = double errors: SpecSupport::FakeErrors.new, price: -1

    PriceValidaor.call product

    expect(product.errors[:price]).to include 'should be more than zero.'
  end
end

```
