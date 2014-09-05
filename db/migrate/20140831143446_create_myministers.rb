class CreateMyministers < ActiveRecord::Migration
  def change
    create_table :myministers do |t|
      t.string :name
      t.integer :ministry_id, index: true

      t.timestamps
    end
  end
end
