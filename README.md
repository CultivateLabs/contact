# Contact

A simple contact form engine. Just add the following to your gemfile:

`gem 'contact', github: 'flyoverworks/contact'`

Mount the engine in your routes file:

`mount Contact::Engine, at: "/"`

And add an initializer in `config/initializers` like this:

```
Contact.configure do |config|
  config.to_email = "david@flyoverworks.com"
end
```

This project rocks and uses MIT-LICENSE.