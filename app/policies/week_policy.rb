class WeekPolicy
  attr_reader :user, :week

  def initialize(user, week)
    @user = user
    @week = week
  end

  def create?
    user.has_role? :admin  
  end

  def edit?
    user.admin?
  end

  def update?
    user.admin?
  end
end