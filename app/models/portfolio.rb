class Portfolio < ActiveRecord::Base
	belongs_to :user
	has_many :achievements
	validates_presence_of :title, :start_date, :intro, :feature_image
  	attr_accessible :achievements, :user_id, :title, :variety, :start_date, :intro, 
  		:feature_image_file_name, :feature_image_content_type , :feature_image,
  		:feature_image_file_size, :feature_image_updated_at
  	has_attached_file :feature_image,
                      :styles => lambda{ |a|
                                  ["image/jpeg", "image/png", "image/jpg", "image/gif"].include?( a.content_type ) ? {
                                  :tiny=> "30x30",
                                  :thumb=> "100x100#",
                                  :small  => "150x150>",
                                  :medium => "300x300>",
                                  :large =>   "500x500>" }: {}
                                 }





end
