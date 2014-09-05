class AddMinistryidToQuestions < ActiveRecord::Migration
  def change
    add_column :questions,:ministry_id,:integer
  end
end
