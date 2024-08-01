class MatchedAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :session
  belongs_to :question
  belongs_to :answer
end
