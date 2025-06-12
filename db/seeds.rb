# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#   
User.create(username: "Abel", password: "password1")
User.create(username: "Claudia", password: "password2")
User.create(username: "Pedro", password: "password3")
User.create(username: "Kiara", password: "password4")
User.create(username: "Carolina", password: "password5")
User.create(username: "Jenny", password: "password6")


Message.create(body: "Un dos tres", user: User.first)
Message.create(body: "Un pasito palante Maria", user: User.first)
Message.create(body: "Un dos tres", user: User.first)
Message.create(body: "Un pasito pa tras", user: User.first)
Message.create(body: "Im not a migajero", user: User.first)

Message.create(body: "Un dos tres", user_id: 8)
Message.create(body: "Un pasito palante Maria", user_id: 9)
Message.create(body: "Un dos tres", user_id: 10)
Message.create(body: "Un pasito pa tras", user_id: 11)
Message.create(body: "Im not a migajero", user_id: 12)

