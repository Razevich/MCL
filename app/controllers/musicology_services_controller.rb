# class MusicologyServicesController < ApplicationController

#   def index
#     @musicology_services = MusicologyService.first
#   end

#   #Create this right in the data base to start? then delete this file
#   #If not, uncomment and add routes.

#     # def new
#     # end
#     #
#     # def create
#     #   @musicology_services = MusicologyServices.new(services_params)
#     #   if @musicology_services.save
#     #     redirect_to musicology_services_path
#     #   else
#     #     render "new"
#     #   end
#     # end


#   def edit
#     @musicology_services = MusicologyServicesController.first
#   end

#   def update
#     @musicology_services = MusicologyServicesController.first
#     @musicology_services.update(services_params)

#     redirect_to musicology_services_path
#   end

#   private

#   def services_params
#     params.require(:musicology_services).permit(:bio)
#   end
# end
# # 


class MusicologyServicesController < ApplicationController
  before_action :set_musicology_service, only: [:show, :edit, :update, :destroy]

  def index
    @musicology_service = MusicologyService.order(id: :asc).all
  end

  def show
  end

  def new
    @musicology_service = MusicologyService.new
  end

  def edit
  end

  def create
    @musicology_service = MusicologyService.new(musicology_service_params)

    respond_to do |format|
      if @musicology_service.save
        format.html { redirect_to musicology_services_path, notice: 'MusicologyService was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @musicology_service.update(musicology_service_params)
        format.html { redirect_to musicology_services_path, notice: 'Musicology Service was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @musicology_service.destroy
    respond_to do |format|
      format.html { redirect_to musicology_services_url, notice: 'MusicologyService was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_musicology_service
      @musicology_service = MusicologyService.find(params[:id])
    end

    def musicology_service_params
      params.require(:musicology_service).permit(:description, :bullets, :title, :name, :bio, :img_url)
    end
end
