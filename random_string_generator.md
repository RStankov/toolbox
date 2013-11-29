# RandomStringGenerator

## Installation

* copy ```random_string_generator.rb``` to ```lib/random_string_generator.rb```
* copy ```random_string_generator_spec.rb``` to ```spec/lib/random_string_generator_spec.rb```


## Usage

```ruby
RandomStringGenerator.call
RandomStringGenerator.call(5)

# check if returned value is acceptable
RandomStringGenerator.call(5) { |i| !PromoCode.where(code: i).exists? }

# add limitation of number of tries
RandomStringGenerator.call(5, 10) { |i| !PromoCode.where(code: i).exists? }
```

## Notice

It uses Ruby's build in SecureRandom.
