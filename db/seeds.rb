puts "🌱 Seeding spices..."

# Seed your database here

##users....
User.create(
    name: "Dennis Koros",
    username: "Dennis",
    password: "password",
    id: 1
)
User.create(
    name: "Paul Smith",
    username: "Smith",
    password: "password1",
    id: 2
)
User.create(
    name: "Enoch kamara",
    username: "Kamara",
    password: "password2",
    id: 3
)

##Pets
#dogs

Pet.create(
    name: "Dog1",
    breed: "hound english",
    image: "https://images.dog.ceo/breeds/hound-english/n02089973_1312.jpg",
    age: 3,
    user_id: 1
)
Pet.create(
    name: "Dog2",
    breed: "Terrier tibetan",
    image: "https://images.dog.ceo/breeds/terrier-tibetan/n02097474_1278.jpg",
    age: 4,
    user_id: 2
)
Pet.create(
    name: "Dog3",
    breed: "Chihuahua",
    image: "https://images.dog.ceo/breeds/chihuahua/n02085620_4266.jpg",
    age: 2,
    user_id: 3
)
#cats
Pet.create(
    name: "Cat1",
    breed: "Abbyssinian",
    image: "https://placekitten.com/200/400",
    age: 1,
    user_id: 1

)
Pet.create(
    name: "Cat2",
    breed: "American Shorthair",
    image: "https://placekitten.com/200/350",
    age: 3,
    user_id: 2
)
Pet.create(
    name: "Cat3",
    breed: "Bengal",
    image: "https://placekitten.com/200/344",
    age: 2,
    user_id: 3
)

puts "✅ Done seeding!"
