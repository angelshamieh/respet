puts "clearing database.."

User.destroy_all
Animal.destroy_all
AnimalType.destroy_all
AnimalStatus.destroy_all

puts "creating users.."

charlotte = User.create!(first_name: "charlotte", last_name: "Lui", email: "charlotte@charlotte.com", password: "123456")
talia = User.create!(first_name: "Talia", last_name: "Wolf", email: "talia@talia.com", password: "123456")
angel = User.create!(first_name: "Angel", last_name: "Shamieh", email: "angel@angel.com", password: "123456")

puts "creating animal types.."

dog = AnimalType.create!(name: "dog")
cat = AnimalType.create!(name: "cat")
bird = AnimalType.create!(name: "bird")
rabbit = AnimalType.create!(name: "rabbit")

puts "creating animal statuses.."

lost = AnimalStatus.create!(status: "lost")
found = AnimalStatus.create!(status: "found")
adopt = AnimalStatus.create!(status: "adopt")
homed = AnimalStatus.create!(status: "reunited")
homed = AnimalStatus.create!(status: "adopted")

puts "creating animals..."

Animal.create!(user: charlotte, animal_type: dog, animal_status: lost, title: "Jack", location: "Ramat Gan", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: angel, animal_type: dog, animal_status: adopt, title: "Brownie", location: "Tel Aviv", gender: "female", description: "Very cute dog looking for a forever home.")
Animal.create!(user: talia, animal_type: cat, animal_status: found, title: "A tabby cat with red collar", location: "Ramat Gan", gender: "male", description: "Found in Haroe 82, he is being look after now.")
Animal.create!(user: charlotte, animal_type: bird, animal_status: lost, title: "Jack", location: "Ramat Gan", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: talia, animal_type: rabbit, animal_status: found, title: "Jack", location: "Ramat Gan", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")

puts "Created #{User.count} users, #{AnimalType.count} animal types, #{AnimalStatus.count} animal statuses and #{Animal.count} animals.."
