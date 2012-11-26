class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user

    if user.role? :Organization
      can :manage, :all
    elsif user.role? :Student
      can :manage, User
    else 
      can :read, :all
    end
  end
end