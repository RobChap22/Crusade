require 'faker'


puts "Deleting all forces..."
Force.destroy_all
puts "Deleting all users..."
User.destroy_all

# USERS
puts 'Creating users...'
rob = User.create!(
  username: "Rob",
  email: "rob@caramail.com",
  password: "password"
)

micky = User.create!(
  username: "Micky",
  email: "micky@caramail.com",
  password: "password"
)
puts "Created #{User.count} users!"


# FORCES
puts "Creating forces..."
tst = Force.create!(
  user: rob,
  name: 'robTest',
  faction: 'Necrons',
  battle_tally: 0,
  battles_won: 0,
  requisition_points: 5,
  supply_limit: 50,
  supply_used: 0
)

tsttwo = Force.create!(
  user: micky,
  name: 'mickyTest',
  faction: 'Imperium',
  battle_tally: 0,
  battles_won: 0,
  requisition_points: 5,
  supply_limit: 50,
  supply_used: 0
)
puts "Created #{Force.count} forces!"


# UNITS
puts "Creating units..."
roles = ['HQ', 'Elite', 'Troops', 'Fast Attack', 'Heavy Support', 'Lord of War', 'Other']

5.times do
  Unit.create!(
    force: tst,
    name: Faker::Books::CultureSeries.culture_ship,
    role: roles.sample,
    supply_value: rand(2..9),
    experience_points: 0,
    crusade_points: 0,
    unit_type: Faker::Games::HalfLife.enemy,
    rank: 'Battle-ready',
    equipment: Faker::Hipster.sentence(word_count: rand(6..20))
  )
end

5.times do
  Unit.create!(
    force: tsttwo,
    name: Faker::Books::CultureSeries.culture_ship,
    role: roles.sample,
    supply_value: rand(2..9),
    experience_points: 0,
    crusade_points: 0,
    unit_type: Faker::Games::HalfLife.enemy,
    rank: 'Battle-ready',
    equipment: Faker::Hipster.sentence(word_count: rand(6..20))
  )
end
puts "Created #{Unit.count} units!"

puts "Database seed complete."
