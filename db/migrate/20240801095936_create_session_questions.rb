class CreateSessionQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :session_questions do |t|
      t.integer :session_id
      t.integer :question_id

      t.timestamps
    end
  end
end
