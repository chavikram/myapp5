class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :section_officer_id, index: true
      t.integer :under_secretary_id, index: true
      t.integer :director_id, index: true

      t.timestamps
    end
  end
end
