# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
drake = Artist.new(name: 'Drake', bio: 'Canadian rapper with 3 different accents')
hiphop = Genre.new(name: 'Hip Hop')
Song.new(name: 'Chicago Freestyle', artist_id: drake.id, genre_id: hiphop.id)