class Project < ActiveRecord::Base
  
  has_many :tasks ,dependent: :destroy, inverse_of: :project
  has_many :addresses ,dependent: :destroy, inverse_of: :project
  accepts_nested_attributes_for :tasks,:allow_destroy => true
  accepts_nested_attributes_for :addresses,:allow_destroy => true
  
end
