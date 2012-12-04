class Organization < ActiveRecord::Base
	validates_presence_of :user_id, :name, :inverse_of => :organization
  attr_accessible :user_id, :name, :address, :city, :state, :zip, :url, :logo, :cover
   has_attached_file :logo,
    :storage => :dropbox,
    :styles => {
                                  :tiny=> "30x30",
                                  :thumb => "100x100",
                                  :small  => "150x150",
                                  :medium => "300x300",
                                  },
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "#{style}/#{id}_#{logo.original_filename}"}
    }                               


   has_attached_file :cover,
    :storage => :dropbox,
    :styles => {
                                  :tiny=> "30x30",
                                  :thumb => "100x100",
                                  :small  => "150x150",
                                  :medium => "300x300",
                                  :cover =>   "851x315"
                                  },
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "#{style}/#{id}_#{cover.original_filename}"}
    }                               


  resourcify
end

