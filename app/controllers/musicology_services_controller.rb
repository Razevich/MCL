class MusicologyServicesController < ApplicationController

  def index
    @musicology_services = MusicologyServices.first
  end

  #Create this right in the data base to start? then delete this file
  #If not, uncomment and add routes.

    # def new
    # end
    #
    # def create
    #   @musicology_services = MusicologyServices.new(services_params)
    #   if @musicology_services.save
    #     redirect_to musicology_services_path
    #   else
    #     render "new"
    #   end
    # end


  def edit
    @musicology_services = MusicologyServicesController.first
  end

  def update
    @musicology_services = MusicologyServicesController.first
    @musicology_services.update(services_params)

    redirect_to musicology_services_path
  end

  private

  def services_params
    params.require(:musicology_services).permit(:bio)
  end
end
