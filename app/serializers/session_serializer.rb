class SessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :duration, :title
end
