class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :matched_answers
end
