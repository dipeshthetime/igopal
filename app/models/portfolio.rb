class Portfolio < ActiveRecord::Base
	belongs_to :user
	has_many :achievements
  	attr_accessible :achievements, :user_id, :title, :variety, :start_date, :intro, :unknown

end
