# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
=begin
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
=end

# populate interests
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

# populate event categories
EventCategory.create(name: 'Comedy') #1
EventCategory.create(name: 'Foreign Languages') #2
EventCategory.create(name: 'Travel') #3
EventCategory.create(name: 'Movies') #4
EventCategory.create(name: 'Food') #5
EventCategory.create(name: 'Books') #6
EventCategory.create(name: 'Health & Wellness') #7
EventCategory.create(name: 'Music') #8
EventCategory.create(name: 'Art') #9
EventCategory.create(name: 'Wine Tasting') #10
EventCategory.create(name: 'Cooking') #11
EventCategory.create(name: 'Politics') #12
EventCategory.create(name: 'Women’s Empowerment') #13
EventCategory.create(name: 'Robotics') #14
EventCategory.create(name: 'Public Speaking') #15
EventCategory.create(name: 'Technology') #16
EventCategory.create(name: 'Running') #17
EventCategory.create(name: 'Programming') #18
EventCategory.create(name: 'Start-ups') #19
EventCategory.create(name: 'Writing') #20

User.create(
        name: 'Alex',
        city: 'New York',
        state: 'NY',
        email: 'alex@alex.com',
        password: 'test'
)


User.create(
    name: 'Sai',
    city: 'Stamford',
    state: 'CT',
    email: 'sai@sai.com',
    password: 'test'
)


User.create(
    name: 'Alina',
    city: 'Brooklyn',
    state: 'NY',
    email: 'alina@alina.com',
    password: 'test'
)

Event.create(event_host: "Google",
             title: "Women in Tech",
             desc: "Weekly lightening talks from prominent women in tech.",
             addr: "4082",
             street: "East 34th Street",
             city: "New York",
             state: "NY",
             zip: "11102",
             created_by_user_id: 1,
             event_date: "2019-01-12",
             event_start_time: "19:00",
             category_id: 13)

Event.create(event_host: "Google",
             title: "Women in Tech",
             desc: "Weekly lightening talks from prominent women in tech.",
             addr: "4082",
             street: "East 34th Street",
             city: "New York",
             state: "NY",
             zip: "11102",
             created_by_user_id: 1,
             event_date: "2019-01-19",
             event_start_time: "19:00",
             category_id: 13)

Event.create(event_host: "Google",
             title: "Women in Tech",
             desc: "Weekly lightening talks from prominent women in tech.",
             addr: "4082",
             street: "East 34th Street",
             city: "New York",
             state: "NY",
             zip: "11102",
             created_by_user_id: 1,
             event_date: "2019-01-26",
             event_start_time: "19:00",
             category_id: 13)

Event.create(event_host: "Amazon",
             title: "Cloud of the Future",
             desc: "Come learn about cloud computing and it's future in technology.",
             addr: "3013",
             street: "East 14th Street",
             city: "New York",
             state: "NY",
             zip: "11128",
             created_by_user_id: 1,
             event_date: "2019-02-22",
             event_start_time: "18:00",
             category_id: 18)

Event.create(event_host: "Microsoft",
             title: "Lightening talks at Microsoft",
             desc: "Weekly lightening talks from Microsoft engineers.",
             addr: "8433",
             street: "West 4th Street",
             city: "New York",
             state: "NY",
             zip: "11003",
             created_by_user_id: 1,
             event_date: "2019-02-10",
             event_start_time: "18:30",
             category_id: 18)

Event.create(event_host: "Microsoft",
             title: "Lightening talks at Microsoft",
             desc: "Weekly lightening talks from Microsoft engineers.",
             addr: "8433",
             street: "West 4th Street",
             city: "New York",
             state: "NY",
             zip: "11003",
             created_by_user_id: 1,
             event_date: "2019-02-17",
             event_start_time: "18:30",
             category_id: 18)

Event.create(event_host: "Microsoft",
             title: "Lightening talks at Microsoft",
             desc: "Weekly lightening talks from Microsoft engineers.",
             addr: "8433",
             street: "West 4th Street",
             city: "New York",
             state: "NY",
             zip: "11003",
             created_by_user_id: 1,
             event_date: "2019-02-24",
             event_start_time: "18:30",
             category_id: 18)

Event.create(event_host: "Brooklyn Brewery",
             title: "Happy Hour Wine Tasting",
             desc: "Relax with friends and our specially selected house wines.",
             addr: "332",
             street: "33rd Street",
             city: "Brooklyn",
             state: "NY",
             zip: "11042",
             created_by_user_id: 1,
             event_date: "2019-01-03",
             event_start_time: "16:00",
             category_id: 10)

Event.create(event_host: "Manhattan Yoga",
             title: "Yoga in the Park",
             desc: "Ring in the New Year with a relaxing morning Yoga session in Central park.",
             addr: "1260",
             street: "Central Park West",
             city: "New York",
             state: "NY",
             zip: "10001",
             created_by_user_id: 1,
             event_date: "2019-01-01",
             event_start_time: "06:00",
             category_id: 17)

Event.create(event_host: "Wino",
             title: "Toastmasters at Wino",
             desc: "Practice public Speaking while sampling our lastest wine selections.",
             addr: "4038",
             street: "Austen Street",
             city: "Forest Hills",
             state: "NY",
             zip: "11058",
             created_by_user_id: 1,
             event_date: "2019-02-01",
             event_start_time: "19:00",
             category_id: 10)

Event.create(event_host: "Manhattan Roadrunner",
             title: "Weekly morning jog",
             desc: "Make new friends while getting in shape, come join our morning jogging group!",
             addr: "1350",
             street: "Central Park South",
             city: "New York",
             state: "NY",
             zip: "10012",
             created_by_user_id: 1,
             event_date: "2019-01-12",
             event_start_time: "05:30",
             category_id: 17)

Event.create(event_host: "Manhattan Roadrunner",
             title: "Weekly morning jog",
             desc: "Make new friends while getting in shape, come join our morning jogging group!",
             addr: "1350",
             street: "Central Park South",
             city: "New York",
             state: "NY",
             zip: "10012",
             created_by_user_id: 1,
             event_date: "2019-01-19",
             event_start_time: "05:30",
             category_id: 17)

Event.create(event_host: "Manhattan Roadrunner",
             title: "Weekly morning jog",
             desc: "Make new friends while getting in shape, come join our morning jogging group!",
             addr: "1350",
             street: "Central Park South",
             city: "New York",
             state: "NY",
             zip: "10012",
             created_by_user_id: 1,
             event_date: "2019-01-26",
             event_start_time: "05:30",
             category_id: 17)

Event.create(event_host: "Queens Robotics Club",
             title: "Weekend Robot Group-Up",
             desc: "Group-up and share ideas with other robotics enthusiasts!",
             addr: "3614",
             street: "38th street",
             city: "LIC",
             state: "NY",
             zip: "11103",
             created_by_user_id: 1,
             event_date: "2019-03-03",
             event_start_time: "12:00",
             category_id: 18)

Event.create(event_host: "Queens Robotics Club",
             title: "Weekend Robot Group-Up",
             desc: "Group-up and share ideas with other robotics enthusiasts!",
             addr: "3614",
             street: "38th street",
             city: "LIC",
             state: "NY",
             zip: "11103",
             created_by_user_id: 1,
             event_date: "2019-03-10",
             event_start_time: "12:00",
             category_id: 18)

Event.create(event_host: "Queens Robotics Club",
             title: "Weekend Robot Group-Up",
             desc: "Group-up and share ideas with other robotics enthusiasts!",
             addr: "3614",
             street: "38th street",
             city: "LIC",
             state: "NY",
             zip: "11103",
             created_by_user_id: 1,
             event_date: "2019-03-17",
             event_start_time: "12:00",
             category_id: 18)

Event.create(event_host: "NY Comics",
             title: "Joke Writting Workshop",
             desc: "Test out new material with seasoned pros.",
             addr: "3090",
             street: "8th Avenue",
             city: "Brooklyn",
             state: "NY",
             zip: "10945",
             created_by_user_id: 1,
             event_date: "2019-02-01",
             event_start_time: "19:00",
             category_id: 17)

Event.create(event_host: "Mama's Bakery",
             title: "Cupcake Workshop",
             desc: "Learn how to make edible works of art.",
             addr: "6089",
             street: "67 street",
             city: "Staten Island",
             state: "NY",
             zip: "10980",
             created_by_user_id: 1,
             event_date: "2017-12-18",
             event_start_time: "18:00",
             category_id: 5)

Event.create(event_host: "Mama's Bakery",
             title: "Kid's Gingerbread House Workshop",
             desc: "Learn to make beautiful and festive gingerbread abodes. Fun for the whole family! Ages 5 and up.",
             addr: "6089",
             street: "67 street",
             city: "Staten Island",
             state: "NY",
             zip: "10980",
             created_by_user_id: 1,
             event_date: "2017-12-16",
             event_start_time: "14:00",
             category_id: 5)

Event.create(event_host: "Queens Action Committee",
             title: "Weekly Community Meeting",
             desc: "Group-up and discussion different issues affecting our community.",
             addr: "7349",
             street: "85th street",
             city: "Elmhurst",
             state: "NY",
             zip: "10379",
             created_by_user_id: 1,
             event_date: "2019-01-06",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Queens Action Committee",
             title: "Weekly Community Meeting",
             desc: "Group-up and discussion different issues affecting our community.",
             addr: "7349",
             street: "85th street",
             city: "Elmhurst",
             state: "NY",
             zip: "10379",
             created_by_user_id: 1,
             event_date: "2019-01-13",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Queens Action Committee",
             title: "Weekly Community Meeting",
             desc: "Group-up and discussion different issues affecting our community.",
             addr: "7349",
             street: "85th street",
             city: "Elmhurst",
             state: "NY",
             zip: "10379",
             created_by_user_id: 1,
             event_date: "2019-01-20",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Brooklyn Movie Lovers",
             title: "Movie Night",
             desc: "Make friends and watch classics from Hollywood's Golden Age!",
             addr: "6709",
             street: "23rd street",
             city: "Brooklyn",
             state: "NY",
             zip: "10409",
             created_by_user_id: 1,
             event_date: "2019-01-05",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Piazza Pizza",
             title: "Pizza Making Class",
             desc: "Learn how to make classic New York pizza ",
             addr: "3987",
             street: "50th street",
             city: "Bronx",
             state: "NY",
             zip: "10209",
             created_by_user_id: 1,
             event_date: "2019-02-17",
             event_start_time: "14:00",
             category_id: 5)

Event.create(event_host: "American Bar and Grill",
             title: "Sample Tuesday",
             desc: "Sample our new sliders and draft beer, 1/2 off!",
             addr: "7901",
             street: "14th Street",
             city: "New York",
             state: "NY",
             zip: "10092",
             created_by_user_id: 1,
             event_date: "2017-12-12",
             event_start_time: "18:00",
             category_id: 5)

Event.create(event_host: "Bronx Book Club",
             title: "Weekly Book Club Meeting",
             desc: "Come discuss the latest bestsellers!",
             addr: "7029",
             street: "54th street",
             city: "Bronx",
             state: "NY",
             zip: "18005",
             created_by_user_id: 1,
             event_date: "2019-01-10",
             event_start_time: "18:30",
             category_id: 17)

Event.create(event_host: "Bronx Book Club",
             title: "Weekly Book Club Meeting",
             desc: "Come discuss the letest bestsellers!",
             addr: "7029",
             street: "54th street",
             city: "Bronx",
             state: "NY",
             zip: "18005",
             created_by_user_id: 1,
             event_date: "2019-01-17",
             event_start_time: "18:30",
             category_id: 17)

Event.create(event_host: "Bronx Book Club",
             title: "Weekly Book Club Meeting",
             desc: "Come discuss the letest bestsellers!",
             addr: "7029",
             street: "54th street",
             city: "Bronx",
             state: "NY",
             zip: "18005",
             created_by_user_id: 1,
             event_date: "2019-01-24",
             event_start_time: "18:30",
             category_id: 17)

Event.create(event_host: "Art & Technology",
             title: "Art & Tech Group-Up",
             desc: "Learn about how to use the latest technology when creating your next masterpiece",
             addr: "4982",
             street: "34th street",
             city: "New York",
             state: "NY",
             zip: "10096",
             created_by_user_id: 1,
             event_date: "2019-02-08",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "New York Comedy Club",
             title: "Open Mic Night",
             desc: "Come and try out your new material!",
             addr: "7809",
             street: "18th street",
             city: "New York",
             state: "NY",
             zip: "11908",
             created_by_user_id: 1,
             event_date: "2018-02-17",
             event_start_time: "20:00",
             category_id: 17)

Event.create(event_host: "New York Toastmasters",
             title: "Weekly Group-Up",
             desc: "Improve your public speaking skills at out weekly group-up",
             addr: "7690",
             street: "55th street",
             city: "New York",
             state: "NY",
             zip: "10090",
             created_by_user_id: 1,
             event_date: "2017-12-19",
             event_start_time: "19:00",
             category_id: 17)

Event.create(event_host: "New York Toastmasters",
             title: "Weekly Group-Up",
             desc: "Improve your public speaking skills at out weekly group-up",
             addr: "7690",
             street: "55th street",
             city: "New York",
             state: "NY",
             zip: "10090",
             created_by_user_id: 1,
             event_date: "2018-01-02",
             event_start_time: "19:00",
             category_id: 17)

Event.create(event_host: "Potter's Corner",
             title: "Valentine's Day Pottery Class",
             desc: "Learn to make pottery with your special someone!",
             addr: "7952",
             street: "78th street",
             city: "Brooklyn",
             state: "NY",
             zip: "10876",
             created_by_user_id: 1,
             event_date: "2018-02-14",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "American Bar and Grill",
             title: "Karaoke Night",
             desc: "Good food and great tunes at Karaoke Night!",
             addr: "7901",
             street: "14th Street",
             city: "New York",
             state: "NY",
             zip: "10092",
             created_by_user_id: 1,
             event_date: "2018-02-15",
             event_start_time: "18:00",
             category_id: 5)

Event.create(event_host: "NY Community Board",
             title: "Holiday Concert",
             desc: "Come celebrate the Holiday season with our annual concert",
             addr: "3781",
             street: "70th Street",
             city: "Queens",
             state: "NY",
             zip: "11372",
             created_by_user_id: 1,
             event_date: "2017-12-20",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Queens Theatre",
             title: "Horror Movie Night",
             desc: "Come and enjoy the best of the genre, with $2 popcorn!",
             addr: "7143",
             street: "30th Ave",
             city: "LIC",
             state: "NY",
             zip: "11103",
             created_by_user_id: 1,
             event_date: "2017-03-14",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Travel Buddies Group-Up",
             title: "Weekly Group-Up",
             desc: "Talk about recent travel and future plans, maybe even meet a new travel buddy!",
             addr: "4309",
             street: "32th Street",
             city: "New York",
             state: "NY",
             zip: "11003",
             created_by_user_id: 1,
             event_date: "2017-01-16",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Travel Buddies Group-Up",
             title: "Weekly Group-Up",
             desc: "Talk about recent travel and future plans, maybe even meet a new travel buddy!",
             addr: "4309",
             street: "32th Street",
             city: "New York",
             state: "NY",
             zip: "11003",
             created_by_user_id: 1,
             event_date: "2017-01-23",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Travel Buddies Group-Up",
             title: "Weekly Group-Up",
             desc: "Talk about recent travel and future plans, maybe even meet a new travel buddy!",
             addr: "4309",
             street: "32th Street",
             city: "New York",
             state: "NY",
             zip: "11003",
             created_by_user_id: 1,
             event_date: "2017-01-30",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Spanish Language Learning Group-Up",
             title: "Weekly Group-Up",
             desc: "Practice your language skills with other learners",
             addr: "5690",
             street: "29th Street",
             city: "New York",
             state: "NY",
             zip: "10946",
             created_by_user_id: 1,
             event_date: "2017-01-31",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "French Language Learning Group-Up",
             title: "Weekly Group-Up",
             desc: "Practice your language skills with other learners",
             addr: "7800",
             street: "78th Street",
             city: "New York",
             state: "NY",
             zip: "10916",
             created_by_user_id: 1,
             event_date: "2017-01-07",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Japanese Language Learning Group-Up",
             title: "Weekly Group-Up",
             desc: "Practice your language skills with other learners",
             addr: "1097",
             street: "73th Street",
             city: "Brooklyn",
             state: "NY",
             zip: "10109",
             created_by_user_id: 1,
             event_date: "2017-03-03",
             event_start_time: "18:00",
             category_id: 17)

Event.create(event_host: "Learn Programming",
             title: "Programming Beginner's Group",
             desc: "Practice your new skills with other new programmers",
             addr: "8010",
             street: "50th Street",
             city: "New York",
             state: "NY",
             zip: "10009",
             created_by_user_id: 1,
             event_date: "2017-02-09",
             event_start_time: "17:00",
             category_id: 18)

Event.create(event_host: "Learn Programming",
             title: "Intermediate Programming Group",
             desc: "Hone your skills with other programmers",
             addr: "8010",
             street: "50th Street",
             city: "New York",
             state: "NY",
             zip: "10009",
             created_by_user_id: 1,
             event_date: "2017-02-10",
             event_start_time: "17:00",
             category_id: 18)

Event.create(event_host: "New York Start-Ups",
             title: "Start-Up Queens",
             desc: "Group-Up with other start-ups in your community",
             addr: "8019",
             street: "30th Street",
             city: "Queens",
             state: "NY",
             zip: "10987",
             created_by_user_id: 1,
             event_date: "2017-03-05",
             event_start_time: "17:30",
             category_id: 17)

Event.create(event_host: "New York Start-Ups",
             title: "Start-Up Staten Island",
             desc: "Group-Up with other start-ups in your community",
             addr: "9014",
             street: "17th Street",
             city: "Staten Island",
             state: "NY",
             zip: "10901",
             created_by_user_id: 1,
             event_date: "2017-03-01",
             event_start_time: "17:30",
             category_id: 17)


Event.create(event_host: "New York Start-Ups",
             title: "Start-Up Brooklyn",
             desc: "Group-Up with other start-ups in your community",
             addr: "1090",
             street: "90th Street",
             city: "Brooklyn",
             state: "NY",
             zip: "10987",
             created_by_user_id: 1,
             event_date: "2017-02-05",
             event_start_time: "17:30",
             category_id: 17)


Attendance.create(
    user_id: 1,
    event_id: 1,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 12,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 3,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 4,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 10,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 2,
    event_id: 1,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 2,
    event_id: 3,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 2,
    event_id: 4,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 3,
    event_id: 3,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 14,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 15,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 39,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 40,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 1,
    event_id: 41,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 2,
    event_id: 41,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 2,
    event_id: 42,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 2,
    event_id: 43,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 3,
    event_id: 43,
    RSVP_Status: 1
)
Attendance.create(
    user_id: 3,
    event_id: 44,
    RSVP_Status: 1
)