StrongParams_example
====================

Rails 4 Strong param example with Devise


## Extracted from Devise#StrongParameters

#### The Lazy Way

If you are adding the new attributes to forms (e.g `sign_up` here), you may see this error in the rails log `Unpermitted parameters:` at `POST` request to the form.

Let's assume you've added your desire attribute in `registrations\new.html.erb` and add these to your `application` controller.

```ruby
before_filter :configure_permitted_parameters, if: :devise_controller?
protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
end
```
