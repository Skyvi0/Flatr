# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
User.destroy_all
User.create(email: "test@test.net", first_name: "bob", last_name: "hogen", password: "AaBb14421")

puts 'Cleaning database...'
Flat.destroy_all
8.times do
  Flat.create(
    user: User.last,
    adress: "443 South Manor Ave. Palos Verdes Peninsula, CA 90274",
    description: "Peninsula Street",
    price: 456
    # image: File.open(Rails.root.join('lib/assets/images/log-cabin.jpg'))
  )

  #  f.image.attach(io: File.open('/assets/images/log-cabin.jpg'), filename: 'log-cabin.jpg')
  puts "flat created"
end
