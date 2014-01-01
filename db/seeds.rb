# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def make_admins
  Admin.create! email: 'samlau95@gmail.com',
                password: 'password'
end

def make_testimonies
  Testimony.create! name: 'Andrew the Apostle',
                    summary: Faker::Lorem.paragraph,
                    content: Faker::Lorem.paragraph(10)
  Testimony.create! name: 'Deborah the Judge',
                    summary: Faker::Lorem.paragraph,
                    content: Faker::Lorem.paragraph(10)
end

make_admins
make_testimonies