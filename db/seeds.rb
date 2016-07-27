# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# languages
["german", "english", "arabic"].each do |language|
  Language.create name: language
end

# people
admin = Admin.create(
  member: Member.create(
    name: "Admin",
    username: "admin",
    email: "admin",
    password: "admin",
    password_confirmation: "admin", 
  ),
)

guide = Guide.create(
  member: Member.create(
    name: "Guide",
    username: "guide", 
    email: "guide",
    password: "guide", 
    password_confirmation: "guide", 
  ),
)
guide.create_location(
  address: "Hermann Schuster Str. 70",
  zipcode: "65510",
  town: "Hünstetten"
)

client = Client.create(
  name: "Client",
  language: Language.first,
)
client.create_location(
  address: "Wiesbadener Straße 5",
  zipcode: "65510",
  town: "Idstein"
)

client2 = Client.create(
  name: "Client2",
  language: Language.second,
)
client2.create_location(
  address: "Lubentiusstraße 10",
  zipcode: "65553",
  town: "Limburg an der Lahn"
)

client3 = Client.create(
  name: "Client3",
  language: Language.third,
)
client3.create_location(
  address: "Hauptstraße 5C",
  zipcode: "10317",
  town: "Berlin"
)

# seminars
basic_seminar = Seminar.create(
  seminar_type: SeminarType.create(name: "Basic"),
  date: Date.yesterday,
)
advanced_seminar = Seminar.create(
  seminar_type: SeminarType.create(name: "Advanced"),
  date: Date.tomorrow,
)
guide.registrations.create(seminar: basic_seminar)
guide.registrations.create(seminar: advanced_seminar)

# missions
mission_type = MissionType.create(
  name: "Refugee"
)
Mission.create(
  guide: guide,
  client: client,
  mission_type: mission_type,
  begin: Date.today - 6.months,
  end: Date.today + 6.months
)