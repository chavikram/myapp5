class CreateQuestionDetails < ActiveRecord::Migration
  def change
    create_table :question_details do |t|
      t.string :question_text
      t.string :answer_text
      t.string :statement_text
      t.integer :question_id, index: true

      t.timestamps
    end
  end
end
