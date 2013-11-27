# Submodel validation

In a lot of cases the validation of model depend on the validation rules in sub models.

Example can be a ```Registration``` object, which create user and account. For creating them both models should be valid. If there is an error the registration should have errors for to to show them to the user

## Installation

* copy to ```lib/active_model/validations/valid_validator.rb```

## Usage

```ruby

# app/models/registration
class Registration
  include ActiveModel::Model

  validates :user, :account, valid: true

  def register
    if valid?
      # everything is fine
    end
  end

  # attribute handlers and model settings methods
end

# app/controllers/registration_controller.rb
class RegistrationController < ApplicationController

  def create
    @registraion = Registration.new registaraion_params
    @registaraion.register

    respond_with @registration
  end

  # other stuff
end

```

## Notice

All errors are delgated to the parent object (_Registration_ in the example). So attribute readers are required for them.
