class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def is_authenticated?
    if !current_user
      flash[:message] = 'You muts be logged in to do that'
      redirect_to login_path
    end
  end

  #memoization
  def current_user
    # if @current_user
    #   @current_user
    # else
    #   @current_user = User.find_by(id: session[:user_id])
    # end
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end
