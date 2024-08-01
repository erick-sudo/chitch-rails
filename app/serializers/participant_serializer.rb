class ParticipantSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :session_id
end
