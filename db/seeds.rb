# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(email: "test@test.net", first_name: "bob", last_name: "hogen")

Flat.destroy_all
8.times do
  flat = Flat.new(
    adress: "443 South Manor Ave. Palos Verdes Peninsula, CA 90274",
    description: "Peninsula Street",
    price: 456
  )
  flat.user = User.last
  puts "flat created"
end
