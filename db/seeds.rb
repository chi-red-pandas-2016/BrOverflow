require 'faker'

User.delete_all
Vote.delete_all
Question.delete_all
Answer.delete_all
Comment.delete_all

200.times do
  User.create!(username: Faker::Name.first_name, password: 'password')
end

20.times do
  Question.create!(text: "Do you even #{Faker::Hacker.verb}, bro?", user_id: User.all.sample)
end

50.times do
  Answer.create!(text: "#{Faker::Hacker.say_something_smart[0...-1], bro!}", user_id: User.all.sample)
end

75.times do
  Comment.create!(text: Faker::Hipster.sentence, user_id: User.all.sample,  comentable: (Answer.all.sample, Question.all.sample).sample)
end

100.times do
  Vote.create!(user_id:)
end
