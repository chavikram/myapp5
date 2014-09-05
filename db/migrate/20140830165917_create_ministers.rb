class CreateMinisters < ActiveRecord::Migration
  def change
    create_table :ministers do |t|
      t.integer :name_title_id, index: true
      t.integer :question_id, index: true
      t.string :name
      
      t.timestamps
    end
  end
end
