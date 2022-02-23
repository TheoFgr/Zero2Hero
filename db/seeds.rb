Booking.destroy_all
Item.destroy_all
User.destroy_all

Item.create(name:"Le Marteau de Thor" , description:"Super outil, toujours performant pour tous types de traveaux!!" , price:150, user_id: 1)
Item.create(name:"Nimbus 2000" , description:"Bien mieux qu'un aspirateur Dyson" , price:50, user_id: 2 )
Item.create(name:"la VERITABLE cape de Frodon" , description:"A porter en toutes saisons" , price:75, user_id: 3 )
Item.create(name:"Faucon Millenium" , description:"Pour un séjour inoubliable!" , price:989, user_id: 4 )