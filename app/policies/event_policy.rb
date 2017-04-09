class EventPolicy
  attr_reader :user, :event

  def initialize(user, event)
    @user = user
    @event = event
  end
  

  def create?
    user.has_role? :admin  
  end

  def edit?
    user.has_role? :admin  
  end

  def update?
    user.has_role? :admin  
  end

  def destroy?
    user.has_role? :admin  
  end
  
end
