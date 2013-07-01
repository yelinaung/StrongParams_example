Strong Params Example
====================

Rails 4 Strong param example with Devise


## Extracted from Devise#StrongParameters

#### The Lazy Way

Rails 4 moved `parameter sanitization` from `model` to `controller`. You no longer will use `attr_accessible` and `attr_protected` in models.

If you are adding the new attributes to forms (e.g `sign_up` form here), you may see this error in the rails log `Unpermitted parameters:...` at `POST` request to the form.

Let's assume you've added your desire attribute in `registrations\new.html.erb` and add these to your `application` controller.

```ruby
before_filter :configure_permitted_parameters, if: :devise_controller?
protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
end
```

For Sign_In process, you have to use the special  `config.authentication_keys` in the `config/initializers/devise.rb` . Else, you can define the attribute you want in the respective model, put `authentication_keys` to be the attribute you want to be.

After that, customize the `sessions/new.html.erb` accordingly. Add these to your `application` controller.

```ruby
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:name, :email, :password, :remember_me) }
```

That's it!


