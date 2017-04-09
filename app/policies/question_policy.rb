class QuestionPolicy
  attr_reader :user, :question

  def initialize(user, question)
    @user = user
    @question = question
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
