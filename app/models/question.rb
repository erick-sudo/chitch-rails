class Question < ApplicationRecord
  has_many :answers
  has_many :session_questions
  has_many :matched_answers
end
