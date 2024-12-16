# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create users
puts 'Seeding database'
puts 'Creating users'
user1 = User.create!(
  email: 'a@a.com',
  password: 'asdf'
)

user2 = User.create!(
  email: 'b@b.com',
  password: 'qwer'
)

user3 = User.create!(
  email: 'c@c.com',
  password: 'zxcv'
)
puts "Users created"

# Create urls
puts 'Creating URLs'
Url.create!(
  short_url: 'b2xVn2',
  long_url: 'http://www.lighthouselabs.ca',
  user: user1
)

Url.create!(
  short_url: '9sm5xK',
  long_url: 'http://www.google.com',
  user: user2
)
puts 'URLs created'
puts 'Databse seeded successfully'