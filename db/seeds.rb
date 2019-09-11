# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Let's seed it"
puts 'Cleaning database...'

# need to put last name


User.destroy_all
natalia = User.create!(first_name: 'Tatiana', last_name: 'Gonzalez', email: 'tatiana@hotmail.com', password: '123456', occupation: 'Developer', field: 'IT', city: 'Rio de Janeiro', born_on: '30/04/1991')
andre = User.create!(first_name: 'Che', last_name: 'Johnson', email: 'che_johnson@hotmail.com', password: '123456', occupation: 'Analyst', field: 'Finance', city: 'Munich', born_on: '15/03/1994')
sarra = User.create!(first_name: 'Jan', last_name: 'Pesek', email: 'jan@hotmail.com', password: '123456', occupation: 'Manager', field: 'IT', city: 'Prague', born_on: '03/07/1989')
fer = User.create!(first_name: 'Bruno', last_name:'Barthe', email: 'brunob@hotmail.com', password: '123456', occupation: 'Doctor', field: 'Medicine', city: 'Ibiza', born_on: '01/01/1940')

Coach.destroy_all
coach = Coach.create!(
  first_name: 'John',
  last_name: 'Smith',
  email: 'johns@coaching.com',
  password: '123456',
  description: 'I have been working with dinousours for 10 years in Ibiza. I have been part of many selection process in my life and have experience in coaching.',
  field: 'IT',
  hourly_rate: '100 EUR',
  city: 'Ibiza',
  born_on: '01/01/1976',
  available_start_at: '08',
  available_end_at: '18' )

coach = Coach.create!(
  first_name: 'Clara',
  last_name: 'Souza',
  email: 'clara@gmail.com',
  password: '123456',
  description: 'I have been in the tech industry for 20 years. I love inspiring people and helping them to achieve their goals.',
  field: 'IT',
  hourly_rate: '200 EUR',
  city: 'Rio de Janeiro',
  born_on: '01/01/1980',
  available_start_at: '09',
  available_end_at: '17' )

coach = Coach.create!(
  first_name: 'Martin',
  last_name: 'Zanotto',
  description: 'I have been part of many selection process in my life and I have a coaching program that has proven to be succesfull. I understand the New York market and can help you.',
  email: 'martinz@coaching.com',
  password: '123456',
  field: 'Accounting',
  hourly_rate: '100 EUR',
  city: 'New York',
  born_on: '01/01/1940',
  available_start_at: '08',
  available_end_at: '18' )

coach = Coach.create!(
  first_name: 'Lucas',
  last_name: 'Gomez',
  email: 'lucasg@coaching.com',
  description: 'I have been working as a private Lawyer for the last 15 years. I also lived abroad so I know how it feels like being in a new city. I can help you understand the rules of the game in Rio.',
  password: '123456',
  field: 'Lawyer',
  hourly_rate: '100 EUR',
  city: 'Rio de Janeiro',
  born_on: '01/01/1985',
  available_start_at: '05',
  available_end_at: '12' )



a = Appointment.new(schedule_at: '10/9/2020', payment_status: 'paid', duration: '2', user_id: '1', coach_id: '1')
a.user = natalia
a.coach = coach
b = Appointment.new(schedule_at: '10/8/2020', payment_status: 'paid', duration: '1', user_id: '2', coach_id: '1')
b.user = andre
b.coach = coach
c = Appointment.new(schedule_at: '10/7/2020', payment_status: 'paid', duration: '1', user_id: '4', coach_id: '1')
c.user = sarra
c.coach = coach
d= Appointment.new(schedule_at: '10/10/2020', payment_status: 'paid', duration: '1', user_id: '3', coach_id: '1')
d.user = fer
d.coach = coach

a.save
b.save
c.save
d.save

puts 'Finished!'
