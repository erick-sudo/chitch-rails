class Session < ApplicationRecord
  has_many :participants
  has_many :session_questions
  has_many :questions, through: :session_questions
  has_many :answers, through: :questions

  has_many :matched_answers

  def self.unmatched_answers_for_user(session_id, user_id)
    Answer.joins(:matched_answers)
          .where(matched_answers: { session_id: session_id })
          .where.not(matched_answers: { user_id: user_id })
          .distinct
  end
end
