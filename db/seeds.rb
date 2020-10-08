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
tst = Force.create(
  user: rob,
  name: 'Test',
  faction: 'Necron',
  battle_tally: 0,
  battles_won: 0,
  requisition_points: 5,
  supply_limit: 50,
  supply_used: 0
)
tsttwo = Force.create(
  user: micky,
  name: 'Test',
  faction: 'Imperium',
  battle_tally: 0,
  battles_won: 0,
  requisition_points: 5,
  supply_limit: 50,
  supply_used: 0
)
puts "Created #{Force.count} forces!"
puts "Database seed complete."
