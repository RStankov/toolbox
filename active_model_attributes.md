# ActiveModel attributes

The missing part from ```ActiveModel```.

## Installation

* copy ```active_model_attributes.rb``` to ```lib/active_model/attributes.rb```
* copy ```active_model_attributes_spec.rb``` to ```spec/lib/active_model/attributes_spec.rb```


## Usage

```ruby
class Product
  include ActiveModel::Attributes

  attributes :name, :price, :category_name
end
```

```ruby
product = Product.new :name => 'iPhone', :price => '$699', :category_name => 'gadgets'
product.name          # => 'iPhone'
product.price         # => '$699'
product.category_name # => 'gadgets'
```
