# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# 10.times do
#     Doctor.create(
#         name: Faker::Name.name,
#         doctor_id: Faker::Number.number(digits: 10),
#         hospital_name: Faker::Company.name,
#         email: Faker::Internet.email,
#         password: '123456'
#     )
# end

# 10.times do
#     Patient.create(
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         national_id: Faker::Number.number(digits: 8),
#         image: Faker::Avatar.image,
#         telephone: Faker::PhoneNumber.cell_phone,
#         gender: Faker::Gender.binary_type,
#         doctor_id: Faker::Number.between(from: 1, to: 10)
#     )
# end

# 10.times do
#     PreExistingCondition.create(
#         diabetes: Faker::Boolean.boolean,
#         hypertension: Faker::Boolean.boolean,
#         asthma: Faker::Boolean.boolean,
#     )
# end

10.times do
    PatientCondition.create(
        patient_id: Faker::Number.between(from: 1, to: 10),
        pre_existing_condition_id: Faker::Number.between(from: 1, to: 10)
    )
end






