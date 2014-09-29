# Contact

A simple contact form engine. Just add the following to your gemfile:

`gem 'contact', github: 'flyoverworks/contact'`

Mount the engine in your routes file:

`mount Contact::Engine, at: "/"`

And add an initializer in `config/initializers` to set where the contact form emails will be sent:

```
Contact.configure do |config|
  config.to_email = "to@example.com"
end
```

As long as you have emails set up properly in your app, you will be able to visit /contact and see a simple contact form with validations that will send the info to the address you set in your initializer.

This project rocks and uses MIT-LICENSE.