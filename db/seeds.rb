# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
User.destroy_all
User.create!(first_name: 'Nati', email: 'natibarthe29@hotmail.com', password: '123456', occupation: 'Developer', field: 'IT', hourly_rate: '500 EUR', city: 'Rio de Janeiro', born_on: '30/04/1991', available_start_at: '9', available_end_at: '17' )
User.create!(first_name: 'Andre', email: 'andre2@hotmail.com', password: '123456', occupation: 'CEO', field: 'Management', hourly_rate: '1000 EUR', city: 'Munich', born_on: '15/03/1994', available_start_at: '5', available_end_at: '12' )
User.create!(first_name: 'Sarra', email: 'sarra@hotmail.com', password: '123456', occupation: 'Teacher of Life', field: 'Teaching', hourly_rate: '2000 EUR', city: 'Algiers', born_on: '03/07/1989', available_start_at: '13', available_end_at: '18' )
User.create!(first_name: 'Fer', email: 'fer9@hotmail.com', password: '123456', occupation: 'Zumba Instructor', field: 'Teaching', hourly_rate: '100 EUR', city: 'Ibiza', born_on: '01/01/1940', available_start_at: '20', available_end_at: '21' )
Appointment.create!(schedule_at: '10/10/2019', payment_status: 'paid', duration: '1', user_id: '1', coach_id: '2')
Appointment.create!(schedule_at: '10/10/2019', payment_status: 'paid', duration: '1', user_id: '2', coach_id: '1')
Appointment.create!(schedule_at: '10/10/2019', payment_status: 'paid', duration: '1', user_id: '1', coach_id: '2')
Appointment.create!(schedule_at: '10/10/2019', payment_status: 'paid', duration: '1', user_id: '3', coach_id: '1')
puts 'Finished!'
