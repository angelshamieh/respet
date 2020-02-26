puts "clearing database.."

Animal.destroy_all
User.destroy_all
AnimalType.destroy_all
AnimalStatus.destroy_all

puts "creating users.."

charlotte = User.create!(first_name: "charlotte", last_name: "Lui", email: "charlotte@charlotte.com", password: "123456", location: "Ramat Gan")
talia = User.create!(first_name: "Talia", last_name: "Wolf", email: "talia@talia.com", password: "123456", location: "Tel Aviv")
angel = User.create!(first_name: "Angel", last_name: "Shamieh", email: "angel@angel.com", password: "123456", location: "Tel Aviv")

puts "creating animal types.."

dog = AnimalType.create!(name: "dog")
cat = AnimalType.create!(name: "cat")
bird = AnimalType.create!(name: "bird")
rabbit = AnimalType.create!(name: "rabbit")

puts "creating animal statuses.."

lost = AnimalStatus.create!(status: "lost")
found = AnimalStatus.create!(status: "found")
adopt = AnimalStatus.create!(status: "adopt")
reunited = AnimalStatus.create!(status: "reunited")
adopted = AnimalStatus.create!(status: "adopted")

puts "creating animals..."

Animal.create!(user: charlotte, animal_type: rabbit, animal_status: lost, title: "Jackson", location: "Ramat Gan", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: angel, animal_type: dog, animal_status: lost, title: "Lala", location: "Tel Aviv", gender: "female", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: charlotte, animal_type: bird, animal_status: lost, title: "Jack", location: "Ramat Gan", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: charlotte, animal_type: dog, animal_status: lost, title: "Mitzi", location: "Tel Aviv", gender: "female", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: talia, animal_type: cat, animal_status: lost, title: "Blade", location: "Ramat Gan", gender: "male", description: "Found in Haroe 82, he is being look after now.")
Animal.create!(user: talia, animal_type: cat, animal_status: found, title: "A tabby cat with red collar", location: "Ramat Gan", gender: "male", description: "Found in Haroe 82, he is being look after now.")
Animal.create!(user: angel, animal_type: rabbit, animal_status: found, title: "A black bunny", location: "Ramat Gan", gender: "female", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: charlotte, animal_type: dog, animal_status: found, title: "Lost dog next to Vitrina", location: "Tel Aviv", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: charlotte, animal_type: bird, animal_status: found, title: "Injured birds", location: "Tel Aviv", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: charlotte, animal_type: dog, animal_status: found, title: "Small tiny dog seems lost", location: "Haifa", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: angel, animal_type: dog, animal_status: adopt, title: "Brownie", location: "Tel Aviv", gender: "female", description: "Very cute dog looking for a forever home.", breed: 'pomeranian', age: 3)
Animal.create!(user: talia, animal_type: bird, animal_status: adopt, title: "Birdy", location: "Haifa", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.", breed: 'pomeranian', age: 3)
Animal.create!(user: talia, animal_type: cat, animal_status: adopt, title: "Hello Kitty", location: "Haifa", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.", breed: 'pomeranian', age: 3)
Animal.create!(user: talia, animal_type: dog, animal_status: adopt, title: "Baby", location: "Haifa", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.", breed: 'pomeranian', age: 3)
Animal.create!(user: talia, animal_type: dog, animal_status: adopt, title: "Gucci", location: "Haifa", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.", breed: 'pomeranian', age: 3)
Animal.create!(user: talia, animal_type: rabbit, animal_status: adopted, title: "James", location: "Ramat Gan", gender: "female", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: talia, animal_type: bird, animal_status: adopted, title: "Amy", location: "Tel Aviv", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: charlotte, animal_type: cat, animal_status: reunited, title: "Mary", location: "Ramat Gan", gender: "female", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: angel, animal_type: cat, animal_status: reunited, title: "John", location: "Tel Aviv", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")
Animal.create!(user: angel, animal_type: dog, animal_status: reunited, title: "Lala", location: "Ramat Gan", gender: "male", description: "Last seen in Haroe 82, very active, was waering a blue collar.")

puts "Created #{User.count} users, #{AnimalType.count} animal types, #{AnimalStatus.count} animal statuses and #{Animal.count} animals.."
