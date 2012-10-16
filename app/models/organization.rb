class Organization < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :url, :user, :zip, :logo, :cover
    has_attached_file :logo
    has_attached_file :cover
    attr_accessible :logo_attributes
    attr_accessible :cover_attributes
    attr_accessible :user_attributes
end
