# Paid_Pro_Model_Int
This file is creating a Model with a soft delete on records from the database

1. Set up your your folder at the root of the directory with a config file
(If you are having issues with installment of Ruby, visit rubygems.org)

2. After you have created your Gemfile and config file, run the following command
bundle install

3. You are going to then make db migrations to your database using the following command
rails db:create   
rails db:migrate

4. Once you have your tests created, to test them run the following command
bundle exec rspec

5. In this folder, we have created a model(item) in the model.app.rb that is to be soft deleted
within the model_records_test.rb file 

Be sure to make sure that that all tests are passing before pushing, make sure that the all
tests are passing on CI as well


