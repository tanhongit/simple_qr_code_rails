# Welcome to "qr code generator rails" by TANHONGIT

Create qr code using rqrcode-with-patches gem with Ruby on Rails.


# 1. Technology
- Ruby on Rails

# 2. Configuration requirements
We are going to build the web application using:
- Rails 5.2.4.4
- Ruby 2.6.3

# 4. Runing

### 4.1. Clone Repo

```
$ git clone https://github.com/TanHongIT/simple_qr_code_rails
$ cd simple_qr_code_rails/rqrcode-with-patches
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
You can see information capacity and version of QR Code at https://www.qrcode.com/en/about/version.html

So you can change version at _**"rqrcode-with-patches/app/controllers/qr_codes_controller.rb"**_

```ruby
  def create
    @qr = RQRCode::QRCode.new(qr_code_params[:text], size: 10)
  end
```

*Max size: 40.

## Support for me
Support this project :stuck_out_tongue_winking_eye: :pray:
<p align="center">
    <a href="https://www.paypal.me/tanhongit" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-green.svg" data-origin="https://img.shields.io/badge/Donate-PayPal-green.svg" alt="PayPal buymeacoffee TanHongIT"></a>
</p>
