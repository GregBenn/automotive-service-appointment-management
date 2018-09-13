# frozen_string_literal: true

User.all.destroy_all
Vehicle.all.destroy_all
Customer.all.destroy_all
Appointment.all.destroy_all


users = [{ name: "Greg", email: "greg01@gmail.com", password: "pass1" },
         { name: "Nick", email: "nick02@gmail.com", password: "pass2" }]

users.each { |user| User.create(user) }


customers = [{ name: "John", email: "john001@gmail.com", phone_number: 6102993276 },
             { name: "Cindy", email: "cindy77@gyahoo.com", phone_number: 9088674400 },
             { name: "Lindsay", email: "lindsay23@aol.com", phone_number: 3027764545 },
             { name: "Matthew", email: "matthew76@icloud.com", phone_number: 4437268383 },
             { name: "Katie", email: "katie2876@icloud.com", phone_number: 6094660032 }]

customers.each { |customer| Customer.create(customer) }


vehicles = [{ year: 2001, make: "Audi", model: "S4", mileage: 78240, customer_id: 1 },
            { year: 2011, make: "Infiniti", model: "G37", mileage: 98144, customer_id: 1 },
            { year: 2014, make: "Dodge", model: "Challenger", mileage: 47889, customer_id: 2 },
            { year: 2012, make: "Bently", model: "Continental GT", mileage: 55437, customer_id: 3 },
            { year: 1986, make: "Toyota", model: "Trueno", mileage: 157284, customer_id: 3 },
            { year: 1986, make: "Toyota", model: "Trueno", mileage: 157284, customer_id: 4 },
            { year: 2001, make: "Acura", model: "Integra Type R", mileage: 87134, customer_id: 4 },
            { year: 1999, make: "Mazda", model: "RX-7", mileage: 76220, customer_id: 5 },
            { year: 2015, make: "Subaru", model: "STi", mileage: 29876, customer_id: 5 }]

# vehicles = vehicles.map do |vehicle|
#   vehicle.merge(customer_id: Customer.all.sample.id)
# end

vehicles.each { |vehicle| Vehicle.create(vehicle) }


appointments = [{ vehicle_id: 1, user_id: 1, scheduled_for: Date.new(2018, 9, 24), status: "cancelled" },
                { vehicle_id: 1, user_id: 1, scheduled_for: Date.new(2018, 6, 20), status: "closed" },
                { vehicle_id: 1, user_id: 1, scheduled_for: Date.new(2018, 3, 13), status: "closed" },
                { vehicle_id: 2, user_id: 1, scheduled_for: Date.new(2018, 9, 27), status: "pending" },
                { vehicle_id: 2, user_id: 1, scheduled_for: Date.new(2018, 8, 12), status: "closed" },
                { vehicle_id: 3, user_id: 1, scheduled_for: Date.new(2018, 9, 24), status: "pending" },
                { vehicle_id: 3, user_id: 1, scheduled_for: Date.new(2018, 9, 24), status: "pending" },
                { vehicle_id: 4, user_id: 1, scheduled_for: Date.new(2018, 9, 24), status: "pending" },
                { vehicle_id: 4, user_id: 1, scheduled_for: Date.new(2018, 6, 20), status: "closed" },
                { vehicle_id: 5, user_id: 1, scheduled_for: Date.new(2018, 9, 23), status: "pending" },
                { vehicle_id: 5, user_id: 1, scheduled_for: Date.new(2018, 5, 15), status: "closed" },
                { vehicle_id: 5, user_id: 1, scheduled_for: Date.new(2018, 2, 25), status: "closed" },
                { vehicle_id: 6, user_id: 2, scheduled_for: Date.new(2018, 3, 17), status: "closed" },
                { vehicle_id: 6, user_id: 2, scheduled_for: Date.new(2018, 4, 18), status: "closed" },
                { vehicle_id: 6, user_id: 2, scheduled_for: Date.new(2018, 6, 14), status: "closed" },
                { vehicle_id: 7, user_id: 2, scheduled_for: Date.new(2018, 9, 24), status: "pending" },
                { vehicle_id: 8, user_id: 2, scheduled_for: Date.new(2018, 9, 24), status: "pending" },
                { vehicle_id: 9, user_id: 2, scheduled_for: Date.new(2018, 9, 24), status: "pending" },
                { vehicle_id: 7, user_id: 2, scheduled_for: Date.new(2018, 2, 24), status: "closed" },
                { vehicle_id: 8, user_id: 2, scheduled_for: Date.new(2018, 5, 18), status: "closed" },
                { vehicle_id: 9, user_id: 2, scheduled_for: Date.new(2018, 7, 11), status: "closed" },
                { vehicle_id: 1, user_id: 1, scheduled_for: Date.new(2018, 9, 13), status: "open" },
                { vehicle_id: 2, user_id: 1, scheduled_for: Date.new(2018, 9, 13), status: "open" },
                { vehicle_id: 3, user_id: 1, scheduled_for: Date.new(2018, 9, 13), status: "open" },
                { vehicle_id: 8, user_id: 2, scheduled_for: Date.new(2018, 9, 13), status: "open" },
                { vehicle_id: 9, user_id: 2, scheduled_for: Date.new(2018, 9, 13), status: "open" },]

appointments.each { |appointment| Appointment.create(appointment) }
