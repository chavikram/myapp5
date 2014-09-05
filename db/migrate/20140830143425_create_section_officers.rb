class CreateSectionOfficers < ActiveRecord::Migration
  def change
    create_table :section_officers do |t|
      t.string :name

      t.timestamps
    end
  end
end
