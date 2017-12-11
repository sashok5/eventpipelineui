# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Tag.create(name: 'Comedy', popularity: 1)
Tag.create(name: 'Foreign Languages', popularity: 1)
Tag.create(name: 'Travel', popularity: 1)
Tag.create(name: 'Movies', popularity: 1)
Tag.create(name: 'Food', popularity: 1)
Tag.create(name: 'Books', popularity: 1)
Tag.create(name: 'Health & Wellness', popularity: 1)
Tag.create(name: 'Music', popularity: 1)
Tag.create(name: 'Art', popularity: 1)
Tag.create(name: 'Wine Tasting', popularity: 1)
Tag.create(name: 'Cooking', popularity: 1)
Tag.create(name: 'Politics', popularity: 1)
Tag.create(name: 'Women’s Empowerment', popularity: 1)
Tag.create(name: 'Robotics', popularity: 1)
Tag.create(name: 'Public Speaking', popularity: 1)
Tag.create(name: 'Technology', popularity: 1)
Tag.create(name: 'Running', popularity: 1)
Tag.create(name: 'Programming', popularity: 1)
Tag.create(name: 'Start-ups', popularity: 1)
Tag.create(name: 'Writing', popularity: 1)

Event.create (event_host: "Google", 
 title: "Women in Tech", 
 desc: "Weekly lightening talks from prominent women in tech",
 addr: "4082", 
 street: "East 34th Street",
 city: "New York", 
 state: "NY", 
 zip: "11102", 
 created_by_user_id: 2,
 event_date: "2018-1-12", 
 event_start_time: "19:00") 
 
