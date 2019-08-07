# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "idoia02", password: "password")
User.create(username: "idoia03", password: "password")
User.create(username: "idoia04", password: "password")
User.create(username: "idoia05", password: "password")

Message.create(body: "holiii", user_id: 2 )
Message.create(body: "aloha", user_id: 3 )
Message.create(body: "holaaaa", user_id: 4 )