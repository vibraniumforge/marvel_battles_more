class StaticPagesController < ApplicationController
  
  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
      flash[:success] = "Welcome!"
    end
  end

end