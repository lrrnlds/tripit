## Changelog

### 2016/10/14 by parkyngj

* Add HTTParty and Dotenv to Gemfile and load Dotenv in environment

### 2016/10/12 by thealicat13

* Require BCrypt in environment file
* Add user instance `#authenticate?` method
* Add/Require Faker
* User faker to make stock user seed data for out-of-box/local testing

### 2016/10/12 by parkyngj

* Add timestamps (with null option set to false) to users table migration

### 2016/10/9 by lexac1 and parkyngj

* Add migration file for user (only has `username`, `email`, `password_hash`)
* Comment out validations for `first_name` and `last_name` in `User` model
* Add `/session-viewer` and `/session-clearer` to `index.rb` controller
