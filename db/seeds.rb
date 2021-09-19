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

Doctor.create(name: "Dr. Billy Bones", specialty: "Broken Bones")
Doctor.create(name: "Dr. Sally Sews", specialty: "Stitches")
Doctor.create(name: "Dr. Karson Crash", specialty: "Emergency Room/Trauma")
Doctor.create(name: "Dr. Harry Brain", specialty: "Neurology")
Doctor.create(name: "Dr. Amanda Mind", specialty: "Psychology")
Doctor.create(name: "Dr. Hannibal Lecter", specialty: "Dermatology")
Doctor.create(name: "Dr. Wendy Womb", specialty: "OBGYN")
Doctor.create(name: "Dr. Rusty Butcher", specialty: "Surgery")

Patient.create(name: "Michael Silverton")
Patient.create(name: "Dillon Rockatanksy")
Patient.create(name: "Tee Sniv")
Patient.create(name: "Katie Catostrophe")
Patient.create(name: "Heath Hell")
Patient.create(name: "Dominic Disaster")
Patient.create(name: "Elli Emergency")
Patient.create(name: "Norma Mom")
Patient.create(name: "Thomas Gom")

222.times do |i|
  Appointment.create(datetime: Faker::Time.between_dates(from: DateTime.now, to: DateTime.now + 43), doctor_id:rand(1..8), patient_id:rand(1..9))
end

puts "seeded #{Doctor.all.length} Doctors"
puts "seeded #{Patient.all.length} Patients"
puts "seeded #{Appointment.all.length} Appointments"
