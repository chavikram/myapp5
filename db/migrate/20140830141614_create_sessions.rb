class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :session_type_id, index: true
      t.string :year

      t.timestamps
    end
  end
end
