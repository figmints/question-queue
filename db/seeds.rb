# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
User.create!(email: 'ian@ian.ian', password: 'heyimian', password_confirmation: 'heyimian')
Department.create!(name: "Development")
Department.create!(name: "HR / Administration")
Department.create!(name: "Design")
Department.create!(name: "Marketing")
Department.create!(name: "Sales")
Department.create!(name: "Account Managers")
