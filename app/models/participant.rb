class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :session
end
