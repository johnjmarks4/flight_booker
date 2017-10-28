ohare = Airport.create(id: 1, name: "Ohare")

jfk = Airport.create(id: 2, name: "Jfk")

dallas_fortworth = Airport.create(id: 3, name: "Dallas-fortworth")

flight1 = ohare.outgoing_flights.create(id: 1, destination_id: 2, duration: 2)

flight2 = jfk.outgoing_flights.create(id: 2, destination_id: 3)

flight3 = dallas_fortworth.outgoing_flights.create(id: 3, destination_id: 1, time: Time.parse("18/01/20").strftime("%Y-%m-%d") )