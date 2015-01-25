# ActiveModel attributes

The missing part from `ActiveModel`.

## Installation

* copy `active_model_attributes.rb to `lib/active_model/attributes.rb`
* copy `active_model_attributes_spec.rb to `spec/lib/active_model/attributes_spec.rb`


## Usage

```ruby
class Product
  include ActiveModel::Attributes

  attributes :name, :price, :category_name
end
```

```Ruby
product = Product.new name: 'iPhone', price: '$699', category_name: 'gadgets'
product.name          # => 'iPhone'
product.price         # => '$699'
product.category_name # => 'gadgets'

# attribute access
product.attributes    # => {'name' => 'iPhone', 'price' => '$699', 'category_name' => 'gadgets'}
product.attributes = {name: 'iPhone 5S'}
```

## Tips

```ruby
class SignUp
  include ActiveModel::Attributes

  attr_reader :user

  # supports delegation of attributes
  attributes :first_name, :last_name, :email, delegate: :user

  def initialize(user)
    @user = user
  end
end
```
