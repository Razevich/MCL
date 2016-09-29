class SessionsController < ApplicationController


  def new
  end

  def create
    @admin = Admin.find_by_username(params[:session][:username])
    if @admin && @admin.authenticate(params[:session][:password])
      session[:admin_id] = @admin.id
      flash[:alert] = "Logged in as admin."
      redirect_to "root/index"
    else
      flash[:alert] = "Invalid username or password."
      render "sessions/new"
    end
  end

  def destroy
    session.delete(:admin_id)
    redirect_to root_url
  end

end
