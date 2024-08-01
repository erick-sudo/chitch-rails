class CreateSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :sessions do |t|
      t.string :title
      t.datetime :start_time
      t.integer :answering_duration
      t.integer :matching_duration

      t.timestamps
    end
  end
end
