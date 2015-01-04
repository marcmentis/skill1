# Create data for patients
namespace :db do
	desc "Fill database with sample data "
	task populate: :environment do
		250.times do |n|
			firstname = Faker::Name.first_name
			lastname = Faker::Name.last_name
			number = Faker::Number.number(7)
			doa = Faker::Business.credit_card_expiry_date
			dod = Faker::Business.credit_card_expiry_date
			dob = Faker::Business.credit_card_expiry_date
			updated_by = Faker::Name.first_name


			Patient.create!(firstname: firstname,
						lastname: lastname,
						number: number,
						doa: doa,
						dod: dod,
						dob: dob,
						facility: '0013',
						updated_by: updated_by)
		end

		250.times do |n|
			firstname = Faker::Name.first_name
			lastname = Faker::Name.last_name
			number = Faker::Number.number(7)
			doa = Faker::Business.credit_card_expiry_date
			dod = Faker::Business.credit_card_expiry_date
			dob = Faker::Business.credit_card_expiry_date
			updated_by = Faker::Name.first_name


			Patient.create!(firstname: firstname,
						lastname: lastname,
						number: number,
						doa: doa,
						dod: dod,
						dob: dob,
						facility: '0036',
						updated_by: updated_by)
		end
	end
end