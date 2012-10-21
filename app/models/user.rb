class User < ActiveRecord::Base
  has_one :portfolio
  has_many :achievments, :through => :portfolio 
  validates_presence_of :email, :first_name, :last_name, :login_name
  #has_one :organization
  attr_accessible :email, :first_name, :last_name, :login_name, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
