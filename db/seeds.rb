# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all 
Genre.destroy_all
Song.destroy_all 

a1= Artist.create(name:"Beyonce", bio: "hello")
a2=Artist.create(name:"Jay-z", bio: "buy bye")
a3=Artist.create(name:"Pharrell", bio: "happy")

g1=Genre.create(name:"pop")
g2=Genre.create(name:"rap")
g3=Genre.create(name:"R&B")

Song.create(name: "Happy", artist_id:a1.id, genre_id: g1.id)
Song.create(name: "Sad", artist_id:a2.id, genre_id: g2.id)
Song.create(name: "Happy", artist_id:a3.id, genre_id: g3.id)
Song.create(name: "Bored", artist_id:a3.id, genre_id: g1.id)

byebug
0