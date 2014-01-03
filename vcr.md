# VCR spec helper

A vcr rspec tag

## Installation

* copy `vcr.rb` to `spec/support/vcr.rb`

## Usage

```ruby
describe RemoteEndpoint, vcr: true do
  it "requests some heavy web resource" do
    expect(RemoteEndpoint.get('products/1')).to eq response
  end
end
```
