require 'faker'

puts "Let's seed it"
puts 'Cleaning database...'

# create manual users

User.destroy_all
sarra = User.create!(first_name: 'Sarra',
                       last_name: 'Ghaib',
                       email: 'sarra@hotmail.com',
                       password: '123456',
                       occupation: 'Developer',
                       field: 'IT',
                       city: 'Rio de Janeiro',
                       born_on: '30/04/1991',
                       image_url: "https://avatars1.githubusercontent.com/u/51202659?s=460&v=4",)

natalia = User.create!(first_name: 'Tatiana',
                       last_name: 'Gonzalez',
                       email: 'tatiana@hotmail.com',
                       password: '123456',
                       occupation: 'Developer',
                       field: 'IT',
                       city: 'Rio de Janeiro',
                       born_on: '30/04/1991',
                       image_url: "https://assets.bizjournals.com/phoenix/user_media/Traci-Russell-726631*220.jpg",)

andre = User.create!(first_name: 'Che',
                       last_name: 'Johnson',
                       email: 'che_johnson@hotmail.com',
                       password: '123456',
                       occupation: 'Analyst',
                       field: 'Finance',
                       city: 'Munich',
                       born_on: '15/03/1994',
                       image_url: "https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/man45662.png",)

sarra = User.create!(first_name: 'Jan',
                       last_name: 'Pesek',
                       email: 'jan@hotmail.com',
                       password: '123456',
                       occupation: 'Manager',
                       field: 'IT',
                       city: 'Prague',
                       born_on: '03/07/1989',
                       image_url: "https://ogletree.com/app/uploads/people/jan-michelsen-515x560.jpg",)

fer = User.create!(first_name: 'Bruno',
                       last_name:'Barthe',
                       email: 'brunob@hotmail.com',
                       password: '123456',
                       occupation: 'Doctor',
                       field: 'Medicine',
                       city: 'Ibiza',
                       born_on: '01/01/1940',
                       image_url: "https://images.askmen.com/1080x540/2016/01/25-021526-facebook_profile_picture_affects_chances_of_getting_hired.jpg",)


# create manual coaches

Coach.destroy_all

coach0 = Coach.create!(
  first_name: 'Patricia',
  last_name: 'Barreto',
  email: 'patricia@coaching.com',
  password: '123456',
  description: 'Are you looking for someone to coah you for your job interview ?
I am Paula, I am passionate about people and how can they improve and grow in the different areas of their lives.

I started as a Social Educator gaining a large experience in training in different types of teams from social research teams to social intervention teams. From this experience I became Mediator, Conflict Manager, Personal Developer, Cross-Cultural Manager and acquired many Intercultural Skills.

My Professional Career evolved from the Social world to the aviation world. I learned to provide the best Customer Service, Promoting and Coordinating an outstanding co-operative teamwork, as a Cabin Crew Manager.

After this fantastic experience she decided it was time to follow the dream and I became a Certified Coach.

As a Career Coach, I am passionate to support and challenge people in their professional area. I triggers in people endless possibilities and options that will turn into massive action towards the desired goal.

I’d love to connect personally with you and if you want to contact me you can find me here!
',
  field: 'IT',
  hourly_rate: '60 EUR',
  city: 'Porto',
  born_on: '01/01/1976',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://www.superprof.fr/images/annonces/professeur-home-jouez-piano-plaisir-jouer-passion-piano.jpg",)

coach1 = Coach.create!(
  first_name: 'Manuel',
  last_name: 'Porto',
  email: 'manuel@gmail.com',
  password: '123456',
  description: 'It is not about telling people what to do, it is making them think on how to do it. I am a passionate Life & Business Coach working in Human Resources because I truly believe that great vision without great people is irrelevant. ',
  field: 'IT',
  hourly_rate: '150 EUR',
  city: 'Porto',
  born_on: '01/06/1982',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://www.superprof.fr/images/annonces/professeur-home-superviseur-propose-cours-maya-zbrush-photoshop-photographie-retouches-preparation-concours-projets-fin.jpg",)

coach2 = Coach.create!(
  first_name: 'Rebecca',
  last_name: 'Martins',
  email: 'rebecca@hotmail.com',
  password: '123456',
  description: 'I am a professional coach. I can help you during all your job research process from writing your resume to preparing your job interview.',
  field: 'IT',
  hourly_rate: '85 EUR',
  city: 'Porto',
  born_on: '06/06/1982',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://www.superprof.fr/images/annonces/professeur-home-cours-conversations-anglais-espagnol-francais-etudiants-professionnels-paris-banlieue-ouest.jpg",)

coach3 = Coach.create!(
  first_name: 'Fernando',
  last_name: 'Barboro',
  email: 'Fernando@gmail.com',
  password: '123456',
  description: 'Specialization Strategic Management of Teams for High Performance and Graduated in Human Resources Management at Universidade Lusíada, I have experience in different areas related to Human Resources. Since February 2018, I have been working at NetJets Europe as HR Manager. I consider myself focused on goals, determined, organized, self-motivated, a team-player, creative and solution-oriented, with analysis, training and leadership skills.

5 steps for success: Self-Motivation | Engagement | Focus and Planning | Overcoming | People ',
  field: 'IT',
  hourly_rate: '100 EUR',
  city: 'Porto',
  born_on: '06/06/1982',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://www.superprof.fr/images/annonces/professeur-home-professeur-mathematiques-specialiste-preparation-hec-pedagogue-professionnel-experimente.jpg",)

coach4 = Coach.create!(
  first_name: 'Pamela',
  last_name: 'Marinelli',
  email: 'pamela@gmail.com',
  password: '123456',
  description: 'Pamela can work worldwide, coaching anyone across the globe with internet access. Her personable character coupled with her knowledge of what manager’s desire in potential hires is what makes her sessions such a success!

Karen recently completed training as a Career Development Facilitator at the University of Wisconsin. This accreditation broadens her current skill set and allows her to administer career assessments and job search strategies for candidates seeking clarification in the industry that best matches their skills and strengths.  Karen resides in Wisconsin with her three children, husband, and their dog, Oreo.',
  field: 'IT',
  hourly_rate: '90 EUR',
  city: 'Porto',
  born_on: '06/06/1982',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://www.superprof.fr/images/annonces/professeur-home-cours-particuliers-langue-culture-italienne-professeure-diplomee-experimentee.jpg",)

coach5 = Coach.create!(
  first_name: 'Jean',
  last_name: 'Le français',
  email: 'jean@yahoo.fr',
  password: '123456',
  description: 'I am an IT recruiter with 10 years of experience. I offer my coaching services to help foreigners looking for a job in France especially in Paris.
  I can help you in all the process from the resume to the salary negociation and the job interview',
  field: 'Marketing',
  hourly_rate: '95 EUR',
  city: 'Paris',
  born_on: '06/06/1982',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://www.superprof.fr/images/annonces/professeur-home-professeurs-reussir-concours-ecoles-architecture-orientation-lettre-motivation-dossier-artistique.jpg",)

coach6 = Coach.create!(
  first_name: 'Andre',
  last_name: 'Ghaib',
  email: 'andre@yahoo.fr',
  password: '123456',
  description: 'I am an arecruiter with 20 years of experience in the tech industry. I offer my coaching services to help foreigners looking for a job in France especially in Paris.
  I can help you in all the process from the resume to the salary negociation and the job interview',
  field: 'IT and sales',
  hourly_rate: '50 EUR',
  city: 'Porto',
  born_on: '06/06/1982',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://www.superprof.fr/images/annonces/professeur-home-natif-anglophone-polyglotte-parle-dix-langues-experience-professeur-apprendra-totalite.jpg",)

coach7 = Coach.create!(
  first_name: 'Carolina',
  last_name: 'Anderson',
  email: 'carolina@gmail.com',
  password: '123456',
  description: 'I am passionate about coaching and helping people reaching their goals. I offer my coaching services to help foreigners looking for a job in France especially in Paris.
  I can help you in all the process from the resume to the salary negociation and the job interview',
  field: 'human ressources',
  hourly_rate: '200 EUR',
  city: 'Porto',
  born_on: '06/06/1982',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://www.superprof.fr/images/annonces/professeur-home-formatrice-anglais-britannique-cpf-accepte-reduction-impots-toeic-toefl-conversation-entretiens-concours.jpg",)


coacha = Coach.create!(
  first_name: 'Jon',
  last_name: 'Stark',
  email: 'jons@coaching.com',
  password: '123456',
  description: 'My father taught me big men fall just as quick as little ones if you put a sword through their hearts.',
  field: 'Walls',
  hourly_rate: '100 EUR',
  city: 'Ibiza',
  born_on: '01/01/1976',
  available_start_at: '08',
  available_end_at: '18',
  image_url: "https://likewise-stage.azureedge.net/uploads/08c59258-c3ce-40b5-a0e0-fcac6a062f5d/Jon_Snow.jpg",)

coachb = Coach.create!(
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
  available_end_at: '17',
  image_url: "https://content-static.upwork.com/uploads/2014/10/01073427/profilephoto1.jpg",)

coachc = Coach.create!(
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
  available_end_at: '18',
  image_url: "https://i0.wp.com/zblogged.com/wp-content/uploads/2019/02/FakeDP.jpeg?resize=567%2C580&ssl=1",)

coachd = Coach.create!(
  first_name: 'Lucas',
  last_name: 'Gomez',
  email: 'lucasg@coaching.com',
  description: 'I have been working as a private Lawyer for the last 15 years. I also lived abroad so I know how it feels like being in a new city. I can help you understand the rules of the game in Rio.',
  password: '123456',
  field: 'Lawyer',
  hourly_rate: '100 EUR',
  city: 'Rio de Janeiro',
  born_on: '01/01/1985',
  available_start_at: '05:00:00',
  available_end_at: '12:00:00',
  image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/NafSadh_Profile.jpg/768px-NafSadh_Profile.jpg",)



a = Appointment.new(schedule_at: '10/9/2020', payment_status: 'paid', duration: '2', user_id: '1', coach_id: '1')
a.user = natalia
a.coach = coacha
b = Appointment.new(schedule_at: '10/8/2020', payment_status: 'paid', duration: '1', user_id: '2', coach_id: '1')
b.user = andre
b.coach = coachb
c = Appointment.new(schedule_at: '10/7/2020', payment_status: 'paid', duration: '1', user_id: '4', coach_id: '1')
c.user = sarra
c.coach = coachc
d= Appointment.new(schedule_at: '10/10/2020', payment_status: 'paid', duration: '1', user_id: '3', coach_id: '1')
d.user = fer
d.coach = coachd

a.save
b.save
c.save
d.save

# random generate Coaches
descriptions = [
  Faker::Movies::VForVendetta.speech,
  Faker::Movies::StarWars.quote,
  Faker::Movies::Hobbit.quote,
  Faker::Movies::HarryPotter.quote
]

emails = [
  "gmail",
  "outlook",
  "hotmail",
  "yahoo"
]

puts "Creating random coaches. It's gonna take a while..."
puts "Grab a coffee or something."
5.times  do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "#{first_name}#{last_name}@#{emails.sample}.com"
  Coach.create!(
  first_name: first_name,
  last_name: last_name,
  email: email,
  description: descriptions.sample,
  password: '123456',
  field: Faker::Educator.subject,
  city: Faker::Nation.capital_city,
  born_on: Faker::Date.birthday(min_age: 18, max_age: 65),
  hourly_rate: "#{rand(10..100)} EUR",
  available_start_at: rand(8..10).to_s,
  available_end_at: rand(17..19).to_s,
  image_url: "https://loremflickr.com/g/300/300/people")
end

puts 'Finished!'
