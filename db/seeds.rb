require 'faker'

User.delete_all
Vote.delete_all
Question.delete_all
Answer.delete_all
Comment.delete_all

20.times do
  User.create!(username: Faker::Name.name, email: Faker::Internet.email ,hashed_password: 'password')
end

20.times do
  Question.create!(title: "Do you even #{Faker::Hacker.verb}, bro?", user_id: rand(1..20))
end

20.times do
  Answer.create!(text: "#{Faker::Hacker.say_something_smart}, bro!", question_id: rand(1..10), user_id: rand(1..20))
end

# 75.times do
#   Comment.create!(text: Faker::Hipster.sentence, user_id: User.all.sample,  comentable: (Answer.all.sample, Question.all.sample).sample)
# end

# 100.times do
#   Vote.create!(user_id:)
# end
