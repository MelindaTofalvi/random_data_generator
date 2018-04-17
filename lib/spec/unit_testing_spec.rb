require 'spec_helper'


describe 'unit testing' do
	
	before(:all) do
		@data = GenData.new.random_form_data_service

	end

	context 'format test' do

		it 'should return a string for a random first name' do
			expect(@data.random_first_name).to be_a String
		end

		it 'should return a string for a random last name' do
			expect(@data.random_last_name).to be_a String
		end

		it 'should return a random phone number which is a string and has 11 characters' do
			expect(@data.random_phone_number).to be_a String
			expect(@data.random_phone_number.length).to eq 11
		end

		it 'should return a string for username that has min 5 characters' do
			expect(@data.random_username).to be_a String
			expect(@data.random_username.length).to be >= 5
		end

		it 'should return a string for email in the correct format' do
			expect(@data.random_email).to be_a String
			expect(@data.random_email).to include('@')
		end

		it 'should return a string for *about yourself* that has no more than 200 characters in it' do
			expect(@data.random_text).to be_a String
			expect(@data.random_text.length).to be < 200
		end

		it 'should return a string for password' do
			expect(@data.random_password).to be_a String
		end

		it 'should return a string for password confirmation' do
			expect(@data.random_password_confirmation).to be_a String
		end
	end

end