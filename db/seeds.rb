# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

doctors = Doctor.create([
    { name: "Dr. John Doe", email: "kimutai@gmail.com", password: "password", password_confirmation: "password" },
    { name: "Dr. Jane Doe", email: "jane@gmail.com", password: "password", password_confirmation: "password" },
])

patients = Patient.create([
    { first_name: "John", last_name: "Doe", gender: "male",image:"", telephone: "0712345678",  national_id:38922123, doctor_id: 1 },
    { first_name: "Jane", last_name: "Doe", gender: "female",image:"", telephone: "0712345678", national_id:38922123, doctor_id: 1 },
])

