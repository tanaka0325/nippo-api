# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Hiroyuki Tanaka', email: 'h.tanaka.0325@gmail.com')
User.create(name: "John Smith", email: 'test@te.st')

Task.create(user_id: User.find_by_name("Hiroyuki Tanaka").id, text: 'Buy the milk', date: Date.today, status: 1, priority: nil)
Task.create(user_id: User.find_by_name("Hiroyuki Tanaka").id, text: 'Study Rails5', date: Date.today, status: 2, priority: 1)
Task.create(user_id: User.find_by_name("John Smith").id, text: 'Introduce myself', date: Date.today, status: 1, priority: 2)
