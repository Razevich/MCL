class MusicolyServicesController < ApplicationController

  def index
    @musicology_services = MusicolyServicesController.first
  end


  def edit
    @musicolgy_services = MusicolyServicesController.first
    @musicolgy_services.update(services_params)

    redirect_to musicolgy_services_path
  end

  private

  def services_params
    params.require(:musicology_services).permit(:bio)
  end
end
