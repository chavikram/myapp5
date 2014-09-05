class Question < ActiveRecord::Base
  belongs_to :question_type
  belongs_to :notice
  belongs_to :section
  belongs_to :session
  belongs_to :ministry
  has_many :ministers
  has_one :question_detail,dependent: :destroy, inverse_of: :question  
  
  accepts_nested_attributes_for :ministers,:allow_destroy => true

  belongs_to :user

  def self.allowed(object, subject)
    rules = []
    return rules unless subject.instance_of?(User)
    rules << :read_question if subject.public?
    rules << :edit_question if object && object.id == subject.user_id
    rules
  end

  def desc
    question_no.to_s+"-"+subject
  end
end