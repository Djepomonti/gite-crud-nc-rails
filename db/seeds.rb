require "open-uri"

puts "Cleaning DB..."

Booking.destroy_all
Room.destroy_all
User.destroy_all

puts "Creating room..."

file = URI.open("https://2.cnstlltn.com/crop-767x550/e97f24cb-b4ee-46e2-9f37-22a36d322cc3/f1.jpg")
room = Room.new(
  name: "chambre coté mer",
  description: "La chambre coté mer est dotée d'un lit double, d'une salle de bains et donne sur la mer.",
  price: "5000",
)
room.photo.attach(io: file, filename: "room1.jpg", content_type: "image/jpg")
room.save!

file = URI.open("https://2.cnstlltn.com/crop-767x550/4ae9fb56-caf9-4091-8b1c-4798ffd448a4/a2b50adf-6531-4dec-ad2d-d477e80afd97.jpg")
room = Room.new(
  name: "chambre coté jardin",
  description: "La chambre coté jardin est dotée d'un lit double, d'une salle de bains et donne sur le jardin.",

  price: "5000",

)
room.photo.attach(io: file, filename: "room2.jpg", content_type: "image/jpg")
room.save!

file = URI.open("https://4.cnstlltn.com/crop-767x550/ac915b52-10c4-4a6d-bceb-f737d4df8e7e/1470097726.jpgtarot%201.jpg")
room = Room.new(
  name: "chambre typique",
  description: "La chambre typique est dotée d'un lit double, d'une salle de bains et donne sur la terasse.",
  price: "5000",

)
room.photo.attach(io: file, filename: "room3.jpg", content_type: "image/jpg")
room.save!

puts "all is done..."
