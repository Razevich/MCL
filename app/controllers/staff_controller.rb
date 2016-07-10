class StaffController < ApplicationController

  def index
    @staff = Staff.all
  end

  def new

  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to staff_path
    else
      render "new"
    end
  end

  def edit
    @staff = Staff.find_by(name: params[:name])
  end

  def update
    @staff = Staff.find_by(name: params[:name])
    @staff.update(staff_params)

    redirect_to staff_path
  end

  def destroy
    @staff = Staff.find_by(name: params[:name])
    @staff.destroy

    redirect_to staff_path
  end

  private

  def staff_params
    params.require(:staff).permit(:name, :img_url, :description)
  end
end
