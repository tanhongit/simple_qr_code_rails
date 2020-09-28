# Welcome to "qr code generator rails" by TANHONGIT

Create qr code using barby & rqrcode gem with Ruby on Rails.


# 1. Technology
- Ruby on Rails

# 2. Configuration requirements
We are going to build the web application using:
- Rails 5.2.4.4
- Ruby 2.6.3

# 3. Tutorial

Barby is a great gem for when you have to generate a barcode or QR code. You can choose to output it as any number of barcode types or as a QR code. This example will use a QR code but I have successfully used the Code128 barcode which is fairly common in the retail space.

The first step is to add Barby to your gem file.

```
gem 'barby'
gem 'rqrcode'
```

Here is an example helper for generating the QR code as base64 encoded png data.

```ruby
def generate_qr(text)
  require 'barby'
  require 'barby/barcode'
  require 'barby/barcode/qr_code'
  require 'barby/outputter/png_outputter'

  barcode = Barby::QrCode.new(text, level: :q, size: 5)
  base64_output = Base64.encode64(barcode.to_png({ xdim: 5 }))
  "data:image/png;base64,#{base64_output}"
end
```

And an example call from your view.


```html
<div style='text-align: center;'>
  <img style='width:300px;height:300px;text-align: center;' id='base64image'                 
       src='<%= generate_qr( "https://github.com/TanHongIT/simple_qr_code_rails" ) %>' />
</div>
```

And voila, a beautiful QR code.

<p align="center">
    <img src="https://imgur.com/OiASTUD.png" data-origin="https://imgur.com/OiASTUD.png" alt="rqrcode rails">
</p>

# 4. Runing

### 4.1. Clone Repo

```
$ git clone https://github.com/TanHongIT/simple_qr_code_rails
$ cd simple_qr_code_rails/rqrcode
```

### 4.2. Bundle Install 

```
$ bundle install
```

### 4.3. Yarn Install 

```
$ yarn install
```

### 4.4. Create database with Postgresql

You must change the appropriate database configuration

Change configuration at _"**config/database.yml**"_ with Postgresql.

```ruby
default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
  username: postgres
  password: 1974
  host: localhost

# tutorial for ubuntu linux:
# sudo -u postgres psql
# create user "simple_qr_code_rails" with password '1974';  
# create database "simple_qr_code_rails" owner "simple_qr_code_rails"; 

development:
  <<: *default
  database: simple_qr_code_rails

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: simple_qr_code_rails_test

production:
  <<: *default
  database: simple_qr_code_rails_production
```

You must change the username, password and database name accordingly!

### 4.5. run rails db:migrate

```
$ rails db:migrate
$ rails db:migrate RAILS_ENV=development
```

### 4.6. Run server 

```
$ rails s
```

## Support for me
Support this project :stuck_out_tongue_winking_eye: :pray:
<p align="center">
    <a href="https://www.paypal.me/tanhongit" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-green.svg" data-origin="https://img.shields.io/badge/Donate-PayPal-green.svg" alt="PayPal buymeacoffee TanHongIT"></a>
</p>
