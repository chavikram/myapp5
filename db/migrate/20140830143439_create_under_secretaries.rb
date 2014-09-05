class CreateUnderSecretaries < ActiveRecord::Migration
  def change
    create_table :under_secretaries do |t|
      t.string :name

      t.timestamps
    end
  end
end
