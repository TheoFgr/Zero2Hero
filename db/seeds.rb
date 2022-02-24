Booking.destroy_all
Item.destroy_all
User.destroy_all

puts 'creating users'
user1 = User.create!(email:"user1@gmail.com" , password:"000000" , age:"10" , address:"1234", first_name:"user1" , last_name:"last1")
user2 = User.create!(email:"user2@gmail.com" , password:"000000" , age:"25" , address:"1234", first_name:"user2" , last_name:"last2")
user3 = User.create!(email:"user3@gmail.com" , password:"000000" , age:"43" , address:"1234", first_name:"user3" , last_name:"last3")
user4 = User.create!(email:"user4@gmail.com" , password:"000000" , age:"96" , address:"1234", first_name:"user4" , last_name:"last4")

puts 'creating items'
