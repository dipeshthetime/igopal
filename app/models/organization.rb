class Organization < ActiveRecord::Base
	validates_presence_of :user_id, :name, :inverse_of => :organization
  attr_accessible :user_id, :name, :address, :city, :state, :zip, :url, :logo, :cover
  has_attached_file :logo, :dependent => :destroy,
                      :styles => lambda{ |a|
                                  ["image/jpeg", "image/png", "image/jpg", "image/gif"].include?( a.content_type ) ? {
                                  :tiny=> "30x30",
                                  :thumb=> "100x100#",
                                  :small  => "150x150>",
                                  :medium => "300x300>",
                                  :large =>   "500x500>" }: {}
                                 }

  has_attached_file :cover,:dependent => :destroy,
                      :styles => {
                                  :tiny=> "30x30",
                                  :thumb=> "425x116",
                                  :cover =>   "851x315>" }


  resourcify
end

