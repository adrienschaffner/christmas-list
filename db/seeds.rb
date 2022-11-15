# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "cleaning giftlists..."
Giftlist.destroy_all

puts "creating giftlists..."

Louise = {name:"Louise giftlist", rating:3, ranking: 4}
Marion = {name:"Marion giftlist", rating:2, ranking: 1}

[Louise, Marion].each do |attributes|
  giftlist = Giftlist.create!(attributes)
  puts "created #{giftlist.name}"
end

puts "finished"
