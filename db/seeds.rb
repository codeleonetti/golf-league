User.destroy_all
GolfCourse.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



    10.times do
      
        User.create(
            name: Faker::Name.name,
            address: Faker::Address.full_address,
            username: Faker::Name.last_name,
            email: Faker::Internet.email,
            password_digest: "password"
        )

        GolfCourse.create(
            name: Faker::Name.middle_name + Faker::Mountain.range,
            address: Faker::Address.full_address,
            phone_number: Faker::PhoneNumber.cell_phone,
            email: Faker::Internet.email,
        )
      
    end


puts " finished "