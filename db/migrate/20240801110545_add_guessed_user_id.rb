class AddGuessedUserId < ActiveRecord::Migration[7.1]
  def change
    add_column :matched_answers, :guessed_user_id, :integer
  end
end
