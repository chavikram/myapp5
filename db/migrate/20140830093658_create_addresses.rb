class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :plot_no
      t.string :street_name
      t.string :colony_name
      t.string :city
      t.string :state
      t.string :pincode
      t.string :mobile
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
