# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(email: 'quentin@musicdb.com', password: 'mdpmdp')
u1.save

puts 'Creating Tags'
tags = ['Pop', 'Rock', 'Hip Hop', 'Trip Hop', 'Electro', 'Happy', 'Holliday', 'Landscape', 'Fear', 'Magic', 'Pizz Comedy', 'Travel', 'Adventure', 'Sport', 'Trailer', 'Epic']
tags.each do |tag|
  t = Tag.new(name: tag)
  t.save
end
puts 'Tags Done'

puts 'Creating Tracks'
tracks = ['Road Movie 1', 'Road Movie 2', 'Road Movie 3', 'Road Movie 4', 'Road Movie 5', 'Fear 1', 'Fear 2', 'Pizz Comedy 1', 'Pizz Comedy 2', 'Pizz Comedy 3', 'Pizz Comedy 4', 'Pizz Comedy 5', 'Pizz Comedy 6']
tracks.each do |track|
  t = Track.new(name: track)
  t.save
end
puts 'Tracks Done'


