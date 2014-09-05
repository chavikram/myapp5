class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      
      t.integer :question_type_id, index: true
      t.integer :notice_id, index: true
      t.integer :section_id, index: true
      t.integer :question_no
      t.belongs_to :session, index: true
      t.string :subject
      t.date :answer_date
      t.date :received_date

      t.timestamps
    end
  end
end
