class User < ApplicationRecord
  has_many :participants
  has_many :matched_answers
  has_many :answers
end
