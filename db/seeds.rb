# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Concert.new(artist: "Bring Me The Horizon", 
			venue: "La Riviera",
			city: "Madrid", 
			date: Date.today + 1.week,
			price: 45, 
			description:"Deathcore from Uk with specials guests")
