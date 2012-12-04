class Portfolio < ActiveRecord::Base
	belongs_to :user, :inverse_of => :portfolio
	has_many :achievements, :uniq => true, :dependent => :destroy
  after_initialize :init
	validates_presence_of :title, :start_date, :intro
  	attr_accessible :id, :achievements, :user_id, :title, :variety, :start_date, :intro, 
  		:image_file_name, :image_content_type , :image,  :startDate,
  		:image_file_size, :image_updated_at
  	
  has_attached_file :image,
    :storage => :dropbox,
    :styles {
                                  :tiny=> "30x30",
                                  :thumb => "100x100",
                                  :small  => "150x150>",
                                  :medium => "300x300>"
                                  },
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "#{style}/#{id}_#{image.original_filename}"}
    }
def init
  self.variety ||='default'
end
end
 