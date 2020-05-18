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

a1 = Artist.create(name:"Bad Bunny",bio:"El Conjeo Malo")
g1 = Genre.create(name:"Reggaeton")
Song.create(name:"La Romana", artist_id:a1.id, genre_id:g1.id)

