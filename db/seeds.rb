# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do |n|
  Event.create!({
    title: "イベント#{n}",
    description: "説明"
  })
end

30.times do |i|
  event = Event.find(i+1)
  recent_point_id = nil
  10.times do
    point = Point.create({
      event: event,
      longitude: Faker::Address.longitude,
      latitude: Faker::Address.latitude,
      message: Faker::JapaneseMedia::SwordArtOnline.real_name,
      recent_point_id: recent_point_id
    })
    recent_point_id = point.id
  end
end
