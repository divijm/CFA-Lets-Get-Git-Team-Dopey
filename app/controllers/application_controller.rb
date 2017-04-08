class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    # flash[:alert] = "You are not authorized to perform this action."
    # redirect_to(request.referrer || root_path)

    respond_to do |format|
      format.html { redirect_to root_path, notice: "You are not authorized to perform this action." }
      format.json { head :no_content }
    end
  end
end
