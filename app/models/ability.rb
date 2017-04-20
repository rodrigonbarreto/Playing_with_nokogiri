class Ability
 include CanCan::Ability
 
  def initialize(user)
    if user
      if user.kind == 'admin'
        can :manage, :all
      end
    end
  end
end
