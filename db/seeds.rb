Faker::Config.locale = 'fr'

User.destroy_all
User.reset_pk_sequence # Reset all user id in database
Category.destroy_all
Category.reset_pk_sequence
Donation.destroy_all
Donation.reset_pk_sequence
Project.destroy_all
Project.reset_pk_sequence
ProjectCategory.destroy_all
ProjectCategory.reset_pk_sequence
puts "Database reset done!"

name_array = ["d i g i t a l e s . g g ('good game')","UPSTR","Argo Athletic","Happy Minute","La bonne auberge","BeMyPartner","The Street4Fit Manager","Feedward","SpotiTube !","Alerte Ciné","Save time, ask me"]
pitch_array = ["","","","","","","","","","",""]
functionalities_array = ["","","","","","","","","","",""]


10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Name.first_name + "@yopmail.com",
    password: "Azerty",
    personal_description: Faker::Lorem.sentence,
    professional_background: Faker::Job.title
  )
  puts "Seeding User #{user.first_name} #{user.last_name}"
end


10.times do
  project = Project.create(
    user_id: rand(1..10),
    name: Faker::Beer.name,
    pitch: Faker::Lorem.sentence(word_count: 7),
    functionalities: Faker::Lorem.sentence(word_count: 60),
    value_of_project: rand(110..600),
    number_of_developers_on_project: rand(2..10),
    daily_time_spent_on_project_per_developer: rand(2..8)
  )
  puts "Seeding Project #{project.name}"
end

3.times do
 cat = Category.create(
    name: Faker::Coffee.blend_name
  )
  puts "Seeding Category #{cat.name}"
end

10.times do
  pc = ProjectCategory.create(
    project_id: Project.all.sample.id,
    category_id: Category.all.sample.id
  )
  puts "Associating #{pc.project_id} with #{pc.category_id}"
end

15.times do
  donation = Donation.create(
    project_id: Project.all.sample.id,
    stripe_customer_id: Faker::Lorem.word,
    stripe_email: User.all.sample.email,
    amount: rand(5..200)
  )
  puts "Seeding Donation of #{donation.amount} € from #{donation.stripe_email}"
end
