class WeekPolicy
  attr_reader :user, :week

  def initialize(user, week)
    @user = user
    @week = week
  end

  def create?
    user.admin?
  end

 def update?
    user.admin?
 end

 def new?
      user.admin?
 end

 def destroy?
      user.admin?
 end

end
