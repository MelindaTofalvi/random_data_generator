# random_data_generator

## Clone the Repo

git clone https://github.com/MelindaTofalvi/random_data_generator.git

## How to use

Instantiate the Superclass and run the form_data_gen_service in your code @generate = Generate.new.form_data_gen_service. Then you can utilise all the methods in this generator

```
@generate = GenData.new.random_form_data_service
@first_name = @generate.random_first_name
@last_name = @generate.random_last_name
@month = @generate.random_month.to_s
@day = @generate.random_day.to_s
@year = @generate.random_year.to_s
@phone = @generate.random_phone_number
@username = @generate.random_username
@email = @generate.random_email
@about = @generate.random_text
@password = @generate.random_password
@password_confirmation = @generate.random_password_confirmation
```

## Test

To run the rspec tests simply run rspec from the root of the project:

```
rspec

------------running tests-----------------

format test
    should return a string for a random first name
    should return a string for a random last name
    should return a random phone number which is a string and has 11 characters
    should return a string for username that has min 5 characters
    should return a string for email in the correct format
    should return a string for *about yourself* that has no more than 200 characters in it
    should return a string for password
    should return a string for password confirmation

Finished in 0.47883 seconds (files took 0.34542 seconds to load)
8 examples, 0 failures
```

