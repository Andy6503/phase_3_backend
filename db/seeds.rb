puts 'cleaning old data'

Employee.destroy_all
Manager.destroy_all
Supervisor.destroy_all
Ceo.destroy_all

puts '🌱 Seeding spices...'

# Seed your database here
puts 'seeding CEOs'

3.times do
  salary = Faker::Number.between(from: 500_000, to: 1_500_000).ceil(-4)
  Ceo.create(
    name: Faker::Name.name,
    company_name: Faker::Company.name,
    position: 'CEO',
    salary: salary,
    date_of_birth: Faker::Date.birthday(min_age: 50, max_age: 60),
  )
end

puts 'seeding supervisors'
6.times do
  salary = Faker::Number.between(from: 200_000, to: 300_000).ceil(-4)
  Supervisor.create(
    name: Faker::Name.name,
    position: 'Supervisor',
    salary: salary,
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
    ceo_id: Ceo.ids.sample,
  )
end
puts 'seeding managers'

20.times do
  salary = Faker::Number.between(from: 100_000, to: 200_000).ceil(-3)

  Manager.create(
    name: Faker::Name.name,
    position: 'Sr. Manager',
    salary: salary,
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
    supervisor_id: Supervisor.ids.sample,
  )
end

puts 'seeding employees'

100.times do
  salary = Faker::Number.between(from: 50_000, to: 90_000).ceil(-3)

  Employee.create(
    name: Faker::Name.name,
    position: Faker::Job.position,
    salary: salary,
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
    manager_id: Manager.ids.sample,
  )
end

puts '✅ Done seeding!'
