# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Hiroyuki Tanaka', email: 'h.tanaka.0325@gmail.com')
User.create(name: "John Smith", email: 'test@te.st')

Task.create(user_id: User.find_by_name("Hiroyuki Tanaka").id, text: 'Buy the milk', date: Date.today, complete_date: nil, status: 1, priority: nil)
Task.create(user_id: User.find_by_name("Hiroyuki Tanaka").id, text: 'Study Rails5', date: Date.today, complete_date: nil, status: 2, priority: 1)
Task.create(user_id: User.find_by_name("John Smith").id, text: 'Introduce myself', date: Date.today, complete_date: nil, status: 1, priority: 2)

Task.create(user_id: User.find_by_name("Hiroyuki Tanaka").id, text: 'Buy the milk', date: "2015-09-22", complete_date: nil, status: 1, priority: nil)
Task.create(user_id: User.find_by_name("Hiroyuki Tanaka").id, text: 'Study Rails5', date: "2016-03-25", complete_date: nil, status: 3, priority: 1)
Task.create(user_id: User.find_by_name("John Smith").id, text: 'Introduce myself', date: "2016-06-24", complete_date: nil, status: 2, priority: 2)

Diary.create(user_id: User.find_by_name("Hiroyuki Tanaka").id, body: "こんにちは", date: Date.today)
Diary.create(user_id: User.find_by_name("Hiroyuki Tanaka").id, body: "テスト投稿", date: Date.today)

Tag.create(name: "test")
Tag.create(name: "ruby")
Tag.create(name: "javascript")
Tag.create(name: "rails")

DiaryTag.create(diary_id: 1, tag_id: 2)
DiaryTag.create(diary_id: 1, tag_id: 4)

DiaryTag.create(diary_id: 2, tag_id: 1)
DiaryTag.create(diary_id: 2, tag_id: 2)
DiaryTag.create(diary_id: 2, tag_id: 3)
DiaryTag.create(diary_id: 2, tag_id: 4)

Tweet.create(message: "こんにちは", date: Date.today)
Tweet.create(message: "今日はいい天気ですね", date: Date.today)
