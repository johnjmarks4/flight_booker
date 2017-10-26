ohare = Airport.create(id: 1, name: "O'hare")

jfk = Airport.create(id: 2, name: "JFK")

dallas_fortworth = Airport.create(id: 3, name: "Dallas-Fortworth")

flight1 = ohare.outgoing_flights.create(id: 1, destination_id: 2, duration: 2)

flight2 = jfk.outgoing_flights.create(id: 2, destination_id: 3)

flight3 = dallas_fortworth.outgoing_flights.create(id: 3, destination_id: 1, time: DateTime.parse("01/10/18"))