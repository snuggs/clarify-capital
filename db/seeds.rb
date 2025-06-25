# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[ Lender, Client ].each &:destroy_all

5.times.map do
  Lender.create! \
    name: Faker::Company.name,
    minimum_credit: rand( 500..700 ),
    interest: rand(Lender::MINIMUM_RATE..0.250),
    minimum_loan: rand(500..10_000)
end

5.times.map do
  Client.create! \
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    credit_score: rand( 500..800 )
end
