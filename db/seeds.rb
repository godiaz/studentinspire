# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Employer.destroy_all

puts 'Creating employers...'
employers_attributes = [
  {
    company_name:         'The A Company',
    contact_name:      'John Doe',
    message:  'Hi, I am looking to hire a few people',
    email:    'john@theacompany.com'
  },
  {
    company_name:         'The B Company',
    contact_name:      'Albert Doe',
    message:  'Hi, I am looking to hire a few people and offer them jobs',
    email:    'albert@thebcompany.com'
  }
]
Employer.create!(employers_attributes)
puts 'Finished!'
