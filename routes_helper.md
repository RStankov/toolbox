# Custom routes in rails project

## Installation

* copy `routes` folder into your project
* include `include Routes::CustomControllerPaths` in your `ApplicationController`

## Usage


```ruby
module Routes
  module CustomPaths
    def product_path(product)
      category_product_path(product.category_slug, product.slug)
    end
  end
end
```

### In a controller

```ruby
class ApplicationController
  # ...
  include Routes::CustomControllerPaths
  # ...

end
```

```ruby
class ProductsController < ApplicationController
  def create
    # ...

    redirect_to product_path(@product)
  end
end
```

```html
<%= link_to product.name, product_path(@product) %>
```

### From Routes object

```ruby
Routes.root_path
Routes.product_path(product)
```

### As an instance variable

```ruby
class Foo
  include Routes

  def routes
    {
      root: root_path
      product: product_path(product)
    }
  end
end
```
