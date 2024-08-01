# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "date"

puts "Creating users"
User.create!([
  { username: "erick" },
  { username: "sila" },
  { username: "andrew" },
  { username: "rainer" },
  { username: "alice" },
  { username: "bob" },
  { username: "charlie" },
  { username: "diana" },
  { username: "eve" },
  { username: "frank" }
])

users = User.all

puts "Creating questions"
Question.create!([
  { text: "What is your favorite color?" },
  { text: "What is your favorite food?" },
  { text: "What is your hobby?" },
  { text: "Where do you live?" },
  { text: "What is your dream job?" }
])

questions = Question.all

puts "Creating session"
session = Session.create!({ 
  title: "Chitch",
  start_time: DateTime.now,
  answering_duration: 8,
  matching_duration: 4
})

puts "Attaching questions to session"
questions.each do |question|
  SessionQuestion.create({
    session_id: session.id,
    question_id: question.id
  })
end

puts "Seeding answers"
questions.each do |question|
  3.times do
    user_id = users.sample.id
    
    unless Answer.exists?(question_id: question.id, user_id: user_id)
      Answer.create!(
        question_id: question.id,
        user_id: user_id,
        text: Faker::Lorem.sentence
      )
    end
  end
end

answers = Answer.all

puts "Matching random answers"
8.times do
  user_id = users.sample.id
  answer_id = answers.sample.id
    
  unless MatchedAnswer.exists?(answer_id: answer_id, user_id: user_id)
    MatchedAnswer.create({
      user_id: user_id,
      session_id: session.id,
      question_id: questions.sample.id,
      answer_id: answer_id
    })
  end
end