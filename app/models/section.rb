class Section < ActiveRecord::Base
  belongs_to :section_officer
  belongs_to :under_secretary
  belongs_to :director
end
