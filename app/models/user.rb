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
  has_many :achievements, :through => :portfolio , :include => :achievements
  validates_presence_of :email, :first_name, :last_name, :login_name
  #has_one :organization
  after_initialize :init
  attr_accessible :email, :first_name, :last_name, :login_name, :avatar, :role

  has_attached_file :avatar,  :dependent => :destroy, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
>>>>>>> 295e57786922ac07327cdee387ccae524c859d29

def init
  self.avatar ||='/assets/images/avatar_male.png'
end


  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end


end
