class Session < ActiveRecord::Base
  belongs_to :session_type
  def desc
    session_type.name+" "+year
  end
end
