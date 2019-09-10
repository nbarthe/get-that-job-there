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
nati = User.create!(first_name: 'Nati', email: 'natibarthe29@hotmail.com', password: '123456', occupation: 'Developer', field: 'IT', city: 'Rio de Janeiro', born_on: '30/04/1991')
andre = User.create!(first_name: 'Andre', email: 'andre2@hotmail.com', password: '123456', occupation: 'CEO', field: 'Management', city: 'Munich', born_on: '15/03/1994')
sarra = User.create!(first_name: 'Sarra', email: 'sarra@hotmail.com', password: '123456', occupation: 'Teacher of Life', field: 'Teaching', city: 'Algiers', born_on: '03/07/1989')
fer = User.create!(first_name: 'Fer', email: 'fer9@hotmail.com', password: '123456', occupation: 'Zumba Instructor', field: 'Teaching', city: 'Ibiza', born_on: '01/01/1940')

Coach.destroy_all
coach = Coach.create!(
  first_name: 'Coach',
  email: 'coach@coach.coach',
  password: '123456',
  field: 'Teaching',
  hourly_rate: '100 EUR',
  city: 'Ibiza',
  born_on: '01/01/1940',
  available_start_at: '08',
  available_end_at: '18' )


a = Appointment.new(schedule_at: '10/9/2020', payment_status: 'paid', duration: '2', user_id: '1', coach_id: '1')
a.user = nati
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
