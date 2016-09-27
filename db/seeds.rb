# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[User, ActionClass, Action, ActionLog, TaskStatus, Task, TweetStatus, Tweet].each do |c|
  yml = File.read("#{Rails.root}/db/seeds/#{c.to_s.tableize}.yml")
  list = YAML.load(yml).symbolize_keys
  list[c.to_s.tableize.to_sym].each do |r|
    c.create do |t|
      r.each do |i, v|
        t.send "#{i}=", v
      end
    end
  end
end
