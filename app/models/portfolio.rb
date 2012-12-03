class Portfolio < ActiveRecord::Base
	belongs_to :user, :inverse_of => :portfolio
	has_many :achievements, :uniq => true, :dependent => :destroy
  after_initialize :init
	validates_presence_of :title, :start_date, :intro
  	attr_accessible :id, :achievements, :user_id, :title, :variety, :start_date, :intro, 
  		:image_file_name, :image_content_type , :image,  :startDate,
  		:image_file_size, :image_updated_at
  	has_attached_file :image, :dependent => :destroy

def init
  self.variety ||='default'
end
end
 