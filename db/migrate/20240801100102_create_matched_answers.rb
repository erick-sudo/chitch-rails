class CreateMatchedAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :matched_answers do |t|
      t.integer :user_id
      t.integer :session_id
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
