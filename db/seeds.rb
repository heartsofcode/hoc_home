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
User.create(name: 'hoc', email: 'hoc@hoc.hoc', password: 'heartofcode')

5.times do |p|
  Blogpost.create(user_id: 1, title: "Blogpost #{p}", description: "Awesome Post", image_data: img_uploader)
end

Calendar.create(name: "HEART OF CODE")
Calendar.create(name: "Berlin Events")
Calendar.create(name: "Planet Earth Events")

5.times do |e|
  Event.create(name: "Event #{e}", location: "Baumschiff", calendar_id: 11)
end
