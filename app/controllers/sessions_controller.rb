class SessionsController < ApplicationController


  def new
  end

  def create
    @admin = Admin.find_by_email(params[:session][:email])
    if @admin && @admin.authenticate(params[:session][:password])
      session[:admin_id] = @admin.id
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
