class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_one :portfolio
  has_many :achievments, :through => :portfolio 
  validates_presence_of :email, :first_name, :last_name, :login_name
  #has_one :organization
  attr_accessible :email, :first_name, :last_name, :login_name, :avatar, :role
  has_attached_file :avatar,                       
  						:styles => lambda{ |a|
                                  ["image/jpeg", "image/png", "image/jpg", "image/gif"].include?( a.content_type ) ? {
                                  :tiny=> "30x30",
                                  :thumb=> "100x100#",
                                  :small  => "150x150>",
                                  :medium => "300x300>",
                                  :large =>   "500x500>" }: {}
                                 }
end
