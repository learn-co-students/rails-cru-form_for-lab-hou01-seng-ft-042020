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

Artist.create(name: "AName1", bio: "bioaname1")
Artist.create(name: "AName2", bio: "bioaname2")
Artist.create(name: "AName3", bio: "bioaname3")
Genre.create(name: "pop")
Genre.create(name: "rock")
Genre.create(name: "rap")
Song.create(name: "Songname1", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "Songname2", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "Songname3", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "Songname4", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "Songname5", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "Songname6", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "Songname7", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "Songname8", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "Songname9", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
