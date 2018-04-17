require 'faker'
require 'selenium-webdriver'

class RandomFormData
	include Faker

	def random_first_name
	  	Name.first_name
	end

	def random_last_name
		Name.last_name
	end

	def random_month
		rand(1..12)
	end

	def random_day
		rand(1..31)
	end

	def random_year
		rand(1950..2014)
	end

	def random_phone_number
		num = Number.number(10)
		'0' + num
	end

	def random_username
		Internet.user_name(5..10)
	end

	def random_email
		Internet.email
	end

	def random_text
		Friends.quote
	end

	def random_password
		@pass = Internet.password
	end

	def random_password_confirmation
		@pass
	end

end