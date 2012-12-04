class User < ActiveRecord::Base
  has_merit

  has_merit

  has_and_belongs_to_many :roles

    include PublicActivity::Model
  tracked
  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :id, :role_ids, :avatar
  has_one :portfolio, :dependent => :destroy, :inverse_of => :user
  has_one :organization
  has_many :achievements, :through => :portfolio , :include => :achievements
  validates_presence_of :email, :first_name, :last_name, :login_name
  #has_one :organization

  attr_accessible :email, :first_name, :last_name, :login_name, :avatar, :role

  has_attached_file :avatar,
    :storage => :dropbox,
    :styles => {
                                  :tiny=> "30x30",
                                  :thumb => "100x100",
                                  :small  => "150x150>",
                                  :medium => "300x300>"
                                  },
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc { |style| "#{style}/#{id}_#{avatar.original_filename}"}
    }




  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end


end
