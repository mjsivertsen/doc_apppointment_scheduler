# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Appointment.destroy_all
Patient.destroy_all
Doctor.destroy_all

Doctor.create(name: "Dr. Billy Bones", specialty: "Broken Bones", address: Faker::Address.full_address, phone: Faker::PhoneNumber.phone_number)
Doctor.create(name: "Dr. Sally Sews", specialty: "Stitches", address: Faker::Address.full_address, phone: Faker::PhoneNumber.phone_number)
Doctor.create(name: "Dr. Karson Crash", specialty: "Emergency Room/Trauma", address: Faker::Address.full_address, phone: Faker::PhoneNumber.phone_number)
Doctor.create(name: "Dr. Harry Brain", specialty: "Neurology", address: Faker::Address.full_address, phone: Faker::PhoneNumber.phone_number)
Doctor.create(name: "Dr. Amanda Mind", specialty: "Psychology", address: Faker::Address.full_address, phone: Faker::PhoneNumber.phone_number)
Doctor.create(name: "Dr. Hannibal Lecter", specialty: "Dermatology", address: Faker::Address.full_address, phone: Faker::PhoneNumber.phone_number)
Doctor.create(name: "Dr. Wendy Womb", specialty: "OBGYN", address: Faker::Address.full_address, phone: Faker::PhoneNumber.phone_number)
Doctor.create(name: "Dr. Rusty Butcher", specialty: "Surgery", address: Faker::Address.full_address, phone: Faker::PhoneNumber.phone_number)

Patient.create(name: "Michael Silverton", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Dillon Rockatanksy", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Tee Sniv", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Katie Catostrophe", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Heath Hell", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Dominic Disaster", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Elli Emergency", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Norma Mom", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Skylar Skalliwag", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Alli Skalliway", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Poopy Peterson", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Carrie (The Movie)", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Jack Nicholson", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Hecky Hurt", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Angela Deville", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Alexis Accident", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Bonnie Bananas", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Crazy Lady", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Donnie Darko", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Don Juan Demarco", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Frederick Freakout", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Georgio Engorgio", phone: Faker::PhoneNumber.phone_number)
Patient.create(name: "Ingrid Insane", phone: Faker::PhoneNumber.phone_number)

222.times do |i|
  Appointment.create(datetime: Faker::Time.between_dates(from: DateTime.now, to: DateTime.now + 43), doctor_id:rand(1..8), patient_id:rand(1..23))
end

puts "seeded #{Doctor.all.length} Doctors"
puts "seeded #{Patient.all.length} Patients"
puts "seeded #{Appointment.all.length} Appointments"
