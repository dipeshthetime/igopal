class User < ActiveRecord::Base
  has_merit

  has_merit

    include PublicActivity::Model
  tracked
  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :id
  has_many :portfolios, :dependent => :destroy, :inverse_of => :user
  has_many :achievements, :through => :portfolio , :include => :achievements
  validates_presence_of :email, :first_name, :last_name, :login_name
  #has_one :organization

  attr_accessible :email, :first_name, :last_name, :login_name, :avatar, :role
  has_attached_file :avatar,  :dependent => :destroy,                      
  						:styles => lambda{ |a|
                                  ["image/jpeg", "image/png", "image/jpg", "image/gif"].include?( a.content_type ) ? {
                                  :tiny=> "30x30",
                                  :thumb=> "100x100#",
                                  :small  => "150x150>",
                                  :medium => "300x300>",
                                  :large =>   "500x500>" }: {}
                                 }
after_initialize :init
def init
#need to add default avatar
  self.avatar||= "images/Star.png"
end
end
