class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.string :text
      t.integer :question_id

      t.timestamps
    end
  end
end
