class CreateNameTitles < ActiveRecord::Migration
  def change
    create_table :name_titles do |t|
      t.string :name

      t.timestamps
    end
  end
end
