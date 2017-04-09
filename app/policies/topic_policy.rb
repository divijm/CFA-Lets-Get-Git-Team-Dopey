class TopicPolicy
  attr_reader :user, :topic

  def initialize(user, topic)
    @user = user
    @topic = topic
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