class MatchedAnswerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :session_id, :question_id, :answer_id, :guessed_user_id
end
