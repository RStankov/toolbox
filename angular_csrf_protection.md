# Angular CSRF Protection

Integrates the CSRF Token with Angular.

## Installation

* copy `angular_csrf_protection.rb` to `app/controllers/concerns/angular_csrf_protection.rb`

## Usage

```ruby
class Api::BaseController < ApplicationController
  include AngularCsrfProtection
end
```

## Notice

The way Angular gives the CRSF is by passing it via cookie.
