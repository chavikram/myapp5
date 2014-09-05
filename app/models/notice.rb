class Notice < ActiveRecord::Base
  belongs_to :session
  def desc
    house_diary_no+"-"+subject
  end
end
