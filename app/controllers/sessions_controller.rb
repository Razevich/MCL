class SessionsController < ApplicationController

  def new
  end

  def create
    @admin = Admin.find_by_username(params[:session][:username])
    if @admin && @admin.authenticate(params[:session][:password])
      session[:admin_id] = @admin.id
      flash[:notice] = "Logged in as Admin."
      redirect_to projects_url
    else
      flash[:alert] = "Invalid username or password."
     redirect_to '/login'
    end
  end

  def destroy
    session.delete(:admin_id)
    redirect_to root_url
  end

end
