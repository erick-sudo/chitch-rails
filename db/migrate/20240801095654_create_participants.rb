class CreateParticipants < ActiveRecord::Migration[7.1]
  def change
    create_table :participants do |t|
      t.integer :user_id
      t.integer :session_id

      t.timestamps
    end
  end
end
