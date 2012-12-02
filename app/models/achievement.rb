class Achievement < ActiveRecord::Base
  belongs_to :portfolio, :inverse_of => :achievements, :include => :user
  validates_presence_of :headline, :end_date, :work, :notes
  attr_accessible :end_date, :headline, :notes, :start_date, :work, 
  :work_file_name, :work_content_type, :work_file_size, :work_updated_at,
  :user_id, :portfolio_id, :portfolio, :user
  
  has_attached_file :work, :dependent => :destroy,:whiney_thumbnails => :true





end
