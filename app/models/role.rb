class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  attr_accessible :name, :resource_type, :role_ids
 def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
end
  scopify
end
