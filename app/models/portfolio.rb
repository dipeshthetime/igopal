class Portfolio < ActiveRecord::Base
	belongs_to :user
	has_many :achievements
	validates_presence_of :user_id, :title, :start_date, :intro
  	attr_accessible :achievements, :user_id, :title, :variety, :start_date, :intro, :unknown

end
