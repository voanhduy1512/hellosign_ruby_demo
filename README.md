HelloSign Ruby Demo App
=======================

Introduction
------------

This is a demo application showing you how to use the [hellosign-ruby]() gem in an application.
This demo has 4 use cases, three on embedded and one on OAuth

How to setup this demo
----------------

####Obtain an Api key
Sign up for an API plan [here](https://www.hellosign.com/api/pricing). Adding embedded signing to your website requires a Silver or Gold API plan.
However, you can test the functionality for free by creating signature requests in test mode.
####Obtain a Client ID.
Sign up for a Client ID for your application [here](https://www.hellosign.com/oauth/createAppForm).

**Noticed**: The OAuth callback url must be **your-demo-app-domain/oauth** to work with this demo.
####Set the API key and Client ID in the demo app
1.Clone the app

```bash
git clone https://github.com/voanhduy1512/hellosign_ruby_demo
cd hellosign_ruby_demo
bundle install
```

2.Set your api key and client id
Open config/initializers/hello_sign.rb, set your keys

```ruby
HelloSign.configure do |config|
  config.api_key = 'api_key'
  # You can use email_address and password instead of api_key. But api_key is recommended
  # If api_key, email_address and password all present, api_key will be used
  # config.email_address = 'email_address'
  # config.password = 'password'
  config.client_id = 'your_cliend_id'
  config.client_secret = 'your_cliend_secret'
end

# This is a  pdf link for this demo only. You don't need to set this in real application.
# You can change this to other pdf link to use it in embdded demo
PDF_FILE = ['https://bitcoin.org/bitcoin.pdf']

```

####Deploy the app
You can't run this demo with localhost:3000 so you must deploy the demo app on [Heroku](https://heroku.com) or your own server to use it.
