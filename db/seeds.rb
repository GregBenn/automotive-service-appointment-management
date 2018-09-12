# frozen_string_literal: true

Vehicle.destroy_all
Customer.destroy_all

customers = [{ name: "John", email: "john001@gmail.com",
               phone_number: "6102993276" },
             { name: "Cindy", email: "cindy77@gyahoo.com",
               phone_number: "9088674400" },
             { name: "Lindsay", email: "lindsay23@aol.com",
               phone_number: "3027764545" },
             { name: "Matthew", email: "matthew76@icloud.com",
               phone_number: "4437268383" }]

customers.each { |customer| Customer.create(customer) }

vehicles = [{ year: "2001", make: "Audi",
              model: "S4", mileage: "78240" },
            { year: "2011", make: "Infiniti",
              model: "G37", mileage: "98144" },
            { year: "2014", make: "Dodge",
              model: "Challenger", mileage: "47889" },
            { year: "2012", make: "Bently",
              model: "Continental GT", mileage: "55437" },
            { year: "1986", make: "Toyota",
              model: "Trueno", mileage: "157284" },
            { year: "1986", make: "Toyota",
              model: "Trueno", mileage: "157284" },
            { year: "2001", make: "Acura",
              model: "Integra Type R", mileage: "87134" },
            { year: "1999", make: "Mazda",
              model: "RX-7", mileage: "76220" },
            { year: "2015", make: "Subaru",
              model: "STi", mileage: "29876" }]

vehicles = vehicles.map do |vehicle|
  vehicle.merge(customer_id: Customer.all.sample.id)
end

vehicles.each { |vehicle| Vehicle.create(vehicle) }

users = [{ name: "Greg", email: "greg07@gmail.com",
           password: "gregpass1" },
         { name: "Nick", email: "nick02@yahoo.com",
           password: "nickpass2" },
         { name: "Katie", email: "katie08@gmail.com",
           password: "katiepass3" }]

