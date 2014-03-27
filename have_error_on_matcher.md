# Matcher for matching respond with

## Installation

* copy `have_error_on_matcher.rb` to `spec/support/models/have_error_on_matcher.rb`


## Usage

```ruby

product = Project.new
expect(product).to have_error_on :name
expect(product).to have_error_on :name, :invalid

```

