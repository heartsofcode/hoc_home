# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
def img_uploader
  file = File.new(Rails.root.join('app/assets/images/seed/dropemoji.png'))
  ImageUploader.new(:store).upload(file).to_json
end

User.create(name: 'admina', email: 'hoc@admina.hoc', password: 'admina')
User.create(name: 'n00bie', email: 'hoc@n00bie.hoc', password: 'n00bie')

5.times do |p|
  Blogpost.create(user_id: 1, title: "Blogpost #{p}", description: "Awesome Post", image_data: img_uploader)
end

Calendar.create(name: "HEART OF CODE Kalender")
Calendar.create(name: "Berlin Kalender")
Calendar.create(name: "Planet Earth Kalender")

Event.create(
  name: "Damensalon",
  start_time: "2018-04-05 19:30:00",
  end_time: "2018-04-05 22:30:00",
  location: "Baumschiff",
  calendar_id: 1,
  location_url: "https://twitter.com/heartofcode",
  description: "Der allwöchentliche Damensalon ist die Schnupperstunde unter den Heart of Code Events.",
  recurring: {
    interval: 1,
    until: "null",
    count: "null",
    validations: {
      day: [4]
      },
    rule_type: "IceCube::WeeklyRule",
    week_start: 0
  }
)

Event.create(
  name: "Netzpolitischer Abend",
  start_time: "2018-04-03 19:30:00",
  end_time: "2018-04-03 21:30:00",
  location: "c-base",
  calendar_id: 2,
  location_url: "https://twitter.com/digiges",
  description: "Monatliches Meetup zum Thema digitale Zivilgesellschaft in Berlin.",
  recurring: { }
)

Event.create(
  name: "IFF",
  start_time: "2019-03-04 00:00:00",
  end_time: "2019-03-08 23:59:59",
  location: "Valencia, Spain",
  calendar_id: 3,
  location_url: "https://internetfreedomfestival.org",
  description: "5 day conference for people interested in freedom of the internet and cybersecurity on a global level.",
  recurring: { }
)
