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

    a1 = Artist.create(name: "Name1", bio: "TEXT1")
    a2 = Artist.create(name: "Name2", bio: "TEXT2")
    a3 = Artist.create(name: "Name3", bio: "TEXT3")
    
    g1 = Genre.create(name: "GNAME1")
    g2 = Genre.create(name: "GNAME2")
    g3 = Genre.create(name: "GNAME3")

    Song.create(name: "SONG1", artist_id: a1.id, genre_id: g1.id)
    Song.create(name: "SONG2", artist_id: a1.id, genre_id: g2.id)
    Song.create(name: "SONG3", artist_id: a2.id, genre_id: g2.id)
    Song.create(name: "SONG4", artist_id: a3.id, genre_id: g3.id)
