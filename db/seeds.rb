Booking.destroy_all
Item.destroy_all
User.destroy_all

puts 'creating users'
user1 = User.create!(email:"user1@gmail.com" , password:"000000" , age:"10" , address:"1234", first_name:"user1" , last_name:"last1")
user2 = User.create!(email:"user2@gmail.com" , password:"000000" , age:"25" , address:"1234", first_name:"user2" , last_name:"last2")
user3 = User.create!(email:"user3@gmail.com" , password:"000000" , age:"43" , address:"1234", first_name:"user3" , last_name:"last3")
user4 = User.create!(email:"user4@gmail.com" , password:"000000" , age:"96" , address:"1234", first_name:"user4" , last_name:"last4")

puts 'creating items'

item1 = Item.create!(name:"Le Marteau de Thor" , description:"Super outil, toujours performant pour tous types de traveaux!!" , price:150, user: user1 )
item2 = Item.create!(name:"Nimbus 2000 " , description:"Bien mieux qu'un aspirateur Dyson" , price:50, user: user2 )
item3 = Item.create!(name:"La Cape de Frodon" , description:"A porter en toutes saisons" , price:75, user: user3 )
item4 = Item.create!(name:"Faucon Millenium" , description:"Pour un séjour inoubliable!" , price:989, user: user4 )
item5 = Item.create(name:"Canne à pêche", description:"Une canne incroyable (entre de bonnes mains..)", price:99999, user: user4 )

Booking.create!(user: user1, item: item1, start_date: Date.new(2022,03,15) , end_date: Date.new(2022,03,16))
Booking.create!(user: user2, item: item2, start_date: Date.new(2022,03,10) , end_date: Date.new(2022,03,15))
Booking.create!(user: user3, item: item3, start_date: Date.new(2022,03,20) , end_date: Date.new(2022,03,25))
Booking.create!(user: user4, item: item4, start_date: Date.new(2022,03,18) , end_date: Date.new(2022,03,20))

Booking.create!(user: user1, item: item1, start_date: Date.new(2022,03,15) , end_date: Date.new(2022,03,16))

