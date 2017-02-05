class SessionsController < ApplicationController
  def new
    # renderöi kirjautumissivun
  end

  def create
  user = User.find_by username: params[:username]
  session[:user_id] = user.id if not user.nil?
  redirect_to user
  end

  def destroy
    # nollataan sessio
    session[:user_id] = nil
    # uudelleenohjataan sovellus pääsivulle
    redirect_to :root
  end
end
