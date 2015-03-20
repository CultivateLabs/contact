# Contact

A simple contact form engine. Just add the following to your gemfile:

`gem 'flyover-contact'`

Mount the engine in your routes file:

`mount Contact::Engine, at: "/"`

And add an initializer in `config/initializers` to set some details for the mailer:

```
Contact.configure do |config|
  config.from_email = "from@example.com"
  config.to_email = "to@example.com"
  config.subject = "New Contact Form Submission"
  config.success_message = "Success! Your message has been sent and we'll get back to you as soon as possible."
  config.base_controller = "::ApplicationController"
  config.contact_page_path = "contact"
end
```

As long as you have emails set up properly in your app, you will be able to visit /contact and see a simple contact form with validations that will send the info to the address you set in your initializer.

## Multiple Forms
To add multiple forms to your site with different "to" email addresses and subjects, you can run `rake db:migrate` to install the contact_forms table. Just add records to the table with those settings. Then in your views, render the form_container partial with the form's GUID passed in as follows:

```
Contact::Form.create(to_email: "to@email.com", subject: "New Email!")
```

Then go into the database to get the Form's guid. It will be a random string like `13ag2302jg9jsf`. Use that to render the form_container:

```
<%= render 'contact/messages/form_container', form: '13ag2302jg9jsf' %>
```

This project rocks and uses MIT-LICENSE.
