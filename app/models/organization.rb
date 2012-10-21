class Organization < ActiveRecord::Base
	validates_presence_of :user_id, :name
  attr_accessible :user_id, :name, :address, :city, :state, :zip, :url, :logo, :cover
  has_attached_file :logo
  has_attached_file :cover
end

