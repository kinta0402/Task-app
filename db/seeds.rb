# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password",
              admin: true)
              
99.times do |n|
  name  = Faker::Name.name
  email = "sample#{n+1}@email.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end

# タスクを自動作成 見本↓

# admin_user = User.first
# guest_user = User.find(2)

# 50.times do |n|
#   task_name = "タスク#{n + 1}"
#   description = "タスク詳細#{n + 1}"
#   admin_user.tasks.create!(name: task_name, description: description)
#   guest_user.tasks.create!(name: task_name, description: description)
# end

# puts "Tasks Created"

50.times do |n|
  name = "タスク#{n+1}"
  description = "タスク詳細#{n+1}"
  Task.create!(name: name,
               description: description,
               user_id: "1")
end

50.times do |n|
  name = "タスク#{n+1}"
  description = "タスク詳細#{n+1}"
  Task.create!(name: name,
               description: description,
               user_id: "2")
end

50.times do |n|
  name = "タスク#{n+1}"
  description = "タスク詳細#{n+1}"
  Task.create!(name: name,
               description: description,
               user_id: "3")
end