# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database.......'
List.destroy_all

puts 'Creating list.....'
test1 = { name: 'testing genre 1' }
test2 = { name: 'testing genre 2' }
test3 = { name: 'testing genre 3' }
test4 = { name: 'testing genre 4' }

[test1, test2, test3, test4].each do |attr|
  list = List.create!(attr)
  puts "#{list.name} created!"
end

puts 'done!'
