
Animal.destroy_all
User.destroy_all
AnimalType.destroy_all
AnimalStatus.destroy_all
MedicalCenter.destroy_all

puts "creating users.."

charlotte = User.create!(first_name: "charlotte", last_name: "Lui", email: "charlotte@charlotte.com", password: "123456", location: "Ramat Gan")
talia = User.create!(first_name: "Talia", last_name: "Wolf", email: "talia@talia.com", password: "123456", location: "Tel Aviv")
angel = User.create!(first_name: "Angel", last_name: "Shamieh", email: "angel@angel.com", password: "123456", location: "Tel Aviv")
eyal = User.create!(first_name: "Eyal", last_name: "Cohen", email: "eyal@eyal.com", password: "123456", location: "Tel Aviv")


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

Animal.create!(
  user: angel,
  animal_type: dog,
  animal_status: adopt,
  title: "Ruthie",
  location: "Tel Aviv",
  gender: "female",
  description: "Ruthie is a shy but darling white 3 yeard old Chinese Crested powder puff being fostered in Tel Aviv. She had a rough start and was rescued from a large hoarding situation last year. She is learning to walk on a leash and play with toys and the other dogs in her foster home. She is so smart she has also learned sit and down! Ruthie's new family will need a fenced in yard, a pretty quiet home and a lot of time, patience and positive reinforcement to help Ruthie become the dog she is destined to be. Young children are too stressful for Ruthie as they move to quickly. Ruthie is pretty independent when it comes to other dogs, another well adjusted dog in the home may be helpful for transition and companionship but not mandatory.",
  breed: 'Chinese Crested Dog',
  age: 3)

Animal.create!(
  user: angel,
  animal_type: dog,
  animal_status: adopt,
  title: "Dallas",
  location: "Tel Aviv",
  gender: "male",
  description: "Vaccinations up to date, spayed / neutered.",
  breed: 'Chinese Crested Dog',
  age: 3)

Animal.create!(
  user: charlotte,
  animal_type: cat,
  animal_status: lost,
  title: "Fennec",
  location: "Ramat Gan",
  gender: "male",
  description: "Last seen in Ramat Gan",
  breed: 'Cat',
  age: 1)

Animal.create!(
  user: charlotte,
  animal_type: dog,
  animal_status: adopt,
  title: "Puppy looking for a new home",
  location: "Tel Aviv",
  gender: "male",
  description: "Suspicious with strangers. Warms up with treats, sweet temperment",
  breed: 'Dogue de Bordeaux Mix',
  age: 1)

Animal.create!(
  user: eyal,
  animal_type: rabbit,
  animal_status: adopt,
  title: "Bunny looking for a new family",
  location: "Tel Aviv",
  gender: "female",
  description: "Suspicious with strangers. Warms up with treats, sweet temperment",
  breed: 'Dogue de Bordeaux Mix',
  age: 0)

Animal.create!(
  user: talia,
  animal_type: bird,
  animal_status: adopt,
  title: "Birdy",
  location: "Tel Aviv",
  gender: "male",
  description: "Suspicious with strangers. Warms up with treats, sweet temperment",
  breed: 'Love bird',
  age: 1)

Animal.create!(
  user: angel,
  animal_type: bird,
  animal_status: adopt,
  title: "Nana",
  location: "Tel Aviv",
  gender: "male",
  description: "Sing beatuiful songs, a lovely bird",
  breed: 'Harz Roller',
  age: 0)

Animal.create!(
  user: talia,
  animal_type: bird,
  animal_status: adopt,
  title: "Pepper",
  location: "Tel Aviv",
  gender: "male",
  description: "a sweet bird",
  breed: 'Red factor canary',
  age: 1)

Animal.create!(
  user: eyal,
  animal_type: rabbit,
  animal_status: adopt,
  title: "Lea",
  location: "Ramat Gan",
  gender: "female",
  description: "loves to sleep, enjoy eating carrots a lot",
  breed: 'Dutch',
  age: 0)

Animal.create!(
  user: eyal,
  animal_type: rabbit,
  animal_status: adopt,
  title: "Cute rabbit looking for lovely owner",
  location: "Ramat Gan",
  gender: "female",
  description: "loves to sleep, enjoy eating carrots a lot",
  breed: 'Netherland Dwarf',
  age: 0)

Animal.create!(
  user: charlotte,
  animal_type: cat,
  animal_status: adopt,
  title: "Loving cat wants a great home",
  location: "Jerusalem",
  gender: "male",
  description: "He is from Europe and he is usually around grass and other cats.",
  breed: 'British Shorthair',
  age: 0)

Animal.create!(
  user: charlotte,
  animal_type: cat,
  animal_status: adopt,
  title: "Avi",
  location: "Haifa",
  gender: "male",
  description: "He was rescued and now looking for a loving family.",
  breed: 'Siamese cat',
  age: 2)

Animal.create!(
  user: angel,
  animal_type: cat,
  animal_status: adopt,
  title: "Lucky",
  location: "Haifa",
  gender: "female",
  description: "He was rescued and now looking for a loving family.",
  breed: 'Scottish Fold',
  age: 4)

Animal.create!(
  user: angel,
  animal_type: dog,
  animal_status: lost,
  title: "Lala",
  location: "Tel Aviv",
  gender: "female",
  description: "Please help! Lala was last seen in Rothschild Tel Aviv, near Urban Place. She was wearing a blue collar.",
  breed: 'dog',
  age: 3)

Animal.create!(
  user: talia,
  animal_type: dog,
  animal_status: lost,
  title: "Max",
  location: "Netanya",
  gender: "male",
  description: "Please help! Max was last seen in Netanya. He was wearing a black collar.",
  breed: 'dog',
  age: 7)

Animal.create!(
  user: talia,
  animal_type: dog,
  animal_status: lost,
  title: "Coco",
  location: "Netanya",
  gender: "female",
  description: "Please help! Coco was last seen in Netanya. She was wearing a black collar.",
  breed: 'dog',
  age: 6)

Animal.create!(
  user: eyal,
  animal_type: dog,
  animal_status: lost,
  title: "Ollie the Great",
  location: "Tel Aviv",
  gender: "male",
  description: "Oille went missing, when we were playing at the Meir Garden Dog Park. He went to pick up a branch, and never comes back 😭! Ollie has a big mark on his belly, and was wearing a blue collar.",
  breed: 'dog',
  age: 2)

Animal.create!(
  user: talia,
  animal_type: cat,
  animal_status: lost,
  title: "Misty",
  location: "Ramat Gan",
  gender: "female",
  description: "Misty was missing since 5pm this afternoon, at Haroe Ramat Gan. Please contact me if you have spotted her.",
  breed: 'cat',
  age: 2)

Animal.create!(
  user: angel,
  animal_type: cat,
  animal_status: lost,
  title: "Hello Kitty",
  location: "Tel Aviv",
  gender: "female",
  description: "Kitty was missing since 3pm this afternoon, at Haroe Ramat Gan. Please contact me if you have spotted her.",
  breed: 'cat',
  age: 5)

Animal.create!(
  user: angel,
  animal_type: cat,
  animal_status: lost,
  title: "Sam",
  location: "Herzliya",
  gender: "male",
  description: "Sam went missing since yesterday, at Haroe Ramat Gan. Please contact me if you have spotted her.",
  breed: 'cat',
  age: 2)

Animal.create!(
  user: angel,
  animal_type: bird,
  animal_status: lost,
  title: "Sunny",
  location: "Herzliya",
  gender: "male",
  description: "Sunny flew away yesterday. Please contact me if you have spotted her.",
  breed: 'bird',
  age: 2)

Animal.create!(
  user: angel,
  animal_type: rabbit,
  animal_status: lost,
  title: "Charlie",
  location: "Tel Aviv",
  gender: "male",
  description: "Sunny hopped away yesterday. Please contact me if you have spotted her.",
  breed: 'rabbit',
  age: 2)

Animal.create!(
  user: talia,
  animal_type: dog,
  animal_status: found,
  title: "Found a dog near Bialik",
  location: "Tel Aviv",
  gender: "male",
  description: "Spotted this dog near Bialik, Tel Aviv. The dog is very friendly and seems to be house-trained. Please contact me if you know this dog.",
  breed: 'dog',
  age: 2)

Animal.create!(
  user: eyal,
  animal_type: dog,
  animal_status: found,
  title: "dog looking for its owner",
  location: "Tel Aviv",
  gender: "male",
  description: "Spotted this dog near Jabotinsky, Tel Aviv. The dog is very friendly and seems to be house-trained. Please contact me if you know this dog.",
  breed: 'dog',
  age: 1)

Animal.create!(
  user: eyal,
  animal_type: cat,
  animal_status: found,
  title: "This cat seems to be lost",
  location: "Tel Aviv",
  gender: "female",
  description: "Spotted this cat near Herzl, Tel Aviv. The cat is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'cat',
  age: 1)

Animal.create!(
  user: eyal,
  animal_type: rabbit,
  animal_status: found,
  title: "Pet rabbit found",
  location: "Tel Aviv",
  gender: "male",
  description: "Spotted this rabbit near Herzl, Ramat Gan. The cat is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'rabbit',
  age: 1)

Animal.create!(
  user: charlotte,
  animal_type: cat,
  animal_status: found,
  title: "Tabby cat with blue collar found",
  location: "Ramat Gan",
  gender: "male",
  description: "Spotted this cat near Herzl, Ramat Gan. The cat is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'cat',
  age: 1)

Animal.create!(
  user: angel,
  animal_type: bird,
  animal_status: found,
  title: "Found a house-trained bird",
  location: "Tel Aviv",
  gender: "male",
  description: "Spotted this bird near Herzl. The bird is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'bird',
  age: 1)

Animal.create!(
  user: angel,
  animal_type: bird,
  animal_status: reunited,
  title: "Found a house-trained bird",
  location: "Tel Aviv",
  gender: "male",
  description: "Spotted this bird near Herzl. The bird is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'bird',
  age: 1)

Animal.create!(
  user: talia,
  animal_type: cat,
  animal_status: reunited,
  title: "lost cat",
  location: "Tel Aviv",
  gender: "male",
  description: "Spotted this bird near Herzl. The bird is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'cat',
  age: 1)

Animal.create!(
  user: charlotte,
  animal_type: cat,
  animal_status: reunited,
  title: "Found a house-trained bird",
  location: "Tel Aviv",
  gender: "male",
  description: "Spotted this bird near Herzl. The bird is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'bird',
  age: 1)

Animal.create!(
  user: eyal,
  animal_type: dog,
  animal_status: reunited,
  title: "Found a house-trained bird",
  location: "Tel Aviv",
  gender: "male",
  description: "Spotted this bird near Herzl. The bird is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'bird',
  age: 1)

Animal.create!(
  user: talia,
  animal_type: dog,
  animal_status: adopted,
  title: "Nicky",
  location: "Tel Aviv",
  gender: "female",
  description: "Spotted this dog near Herzl. The bird is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'dog',
  age: 1)

Animal.create!(
  user: eyal,
  animal_type: dog,
  animal_status: adopted,
  title: "Found a house-trained bird",
  location: "Haifa",
  gender: "male",
  description: "Spotted this bird near Herzl. The bird is very friendly and seems to be house-trained. Please contact me if you know this cat.",
  breed: 'cat',
  age: 1)

puts 'creating medical centers...'

MedicalCenter.create!(
  name: "Vets4Pets",
  address:"Yehuda Hayamit St 32, Tel Aviv-Yafo",
  phone: "03-683-3396")

MedicalCenter.create!(
  name: "Medical-vet Clinic",
  address:"Dizengoff St 50, Tel Aviv-Yafo",
  phone: "03-620-6077")

# MedicalCenter.create!(
#   name: "Central vet Tel Aviv",
#   address:"Shlomo Ibn Gabirol St 15, Tel Aviv-Yafo",
#   phone: "077-507-7157")

MedicalCenter.create!(
  name: "Medical-vet",
  address:"Dizengoff St 50, Tel Aviv-Yafo",
  phone: "03-620-6066")

MedicalCenter.create!(
  name: "DanitVet",
  address:"Melchett St 30, Tel Aviv-Yafo",
  phone: "03-771-0088")

# MedicalCenter.create!(
#   name: "Midtown Animal Clinic",
#   address:"Tchernikhovski St 15, Tel Aviv-Yafo",
#   phone: "03-525-4798")

# MedicalCenter.create!(
#   name: "VetTelaviv",
#   address:"Tchernikhovski St 19, Tel Aviv-Yafo",
#   phone: "03-609-9707")

MedicalCenter.create!(
  name: "Asaf Veterinary Hospital",
  address:"Florentin St 11, Tel Aviv-Yafo",
  phone: "1-700-706-363")

MedicalCenter.create!(
  name: "Gilad and Danielle veterinary clinic",
  address:"Jabotinsky St 1, Tel Aviv-Yafo",
  phone: "03-601-1636")

# MedicalCenter.create!(
#   name: "Veterinary Clinic Tel Aviv Dr. Tamar Fliedel",
#   address:"Betsal'el St 2, Tel Aviv-Yafo",
#   phone: "03-609-0149")

MedicalCenter.create!(
  name: "Veterinary hospital in the square",
  address:"Yigal Alon St 157, Tel Aviv-Yafo",
  phone: "03-523-2880")

MedicalCenter.create!(
  name: "Dr. Ronen Winkler",
  address:"Frishman St 43, Tel Aviv-Yafo",
  phone: "03-523-4546")

MedicalCenter.create!(
  name: "Dr. Ilan Zadikov-Veterinary Clinic",
  address:"Bialik St 75, Ramat Gan",
  phone: "03-672-7234")

# MedicalCenter.create!(
#   name: "Veterinarian Givatayim - Animal Clinic of Assaf",
#   address:"Weizman St 30, Giv'atayim, 5342701",
#   phone: "1-700-706-363")

MedicalCenter.create!(
  name: "Animal Love",
  address:"Yad HaMa'avir St 9, Tel Aviv-Yafo",
  phone: "03-647-2933")

# MedicalCenter.create!(
#   name: "",
#   address:"",
#   phone: "")

puts "Created #{User.count} users, #{AnimalType.count} animal types, #{AnimalStatus.count} animal statuses, #{Animal.count} animals and #{MedicalCenter.count} centers.."
