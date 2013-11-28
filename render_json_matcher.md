# Matcher for matching json responses

## Installation

* copy ```render_json_matcher.rb``` to ```spec/support/controllers/render_json_matcher.rb```
* Rspec will load it from there

## Usage

```ruby
expect(controller).to render_json attribute1: 'value1', attribute2: 'value2'
```

## Notice

```render_json``` doesn't care about the order of the json elements. Internally it decodes the json hash and then makes the comparison.
