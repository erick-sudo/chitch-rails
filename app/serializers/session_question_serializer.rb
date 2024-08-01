class SessionQuestionSerializer < ActiveModel::Serializer
  attributes :id, :session_id, :question_id
end
