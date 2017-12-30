# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plan.create(user_id: "3", date: "22/12/2017", ambition: "Test", accomplishment: "View")
Department.create(dept_name: "Software Developer")
Department.create(dept_name: "Buisness Developer")
Department.create(dept_name: "UI/UX")
