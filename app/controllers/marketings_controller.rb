class MarketingsController < ApplicationController
  before_action :set_marketing, only: [:show, :edit, :update, :destroy]


  def index
    @marketings = Marketing.all
  end

  def show
  end


  def new
    @marketing = Marketing.new
  end


  def edit
  end


  def create
    @marketing = Marketing.new(marketing_params)

    respond_to do |format|
      if @marketing.save
        format.html { redirect_to @marketing, notice: 'Marketing Ad was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @marketing.update(marketing_params)
        format.html { redirect_to @marketing, notice: 'Marketing Ad was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @marketing.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Marketing Ad was successfully destroyed.' }
    end
  end

  private
    def set_marketing
      @marketing = Marketing.find(params[:id])
    end

    def marketing_params

      params.require(:marketing).permit(:year, :title, :network, :season, :description, :img_url, :favorite)
    end
end



# class MarketingsController < ApplicationController

#     def index
#       @marketings = Marketing.all
#     end

#     def show
#       @marketing = Marketing.find_by(title: params[:title])
#     end

#     def new

#     end

#     def create
#       @marketing = Marketing.new(marketing_params)
#       if @marketing.save
#         redirect_to marketing_path
#       else
#         render "new"
#       end
#     end

#     def edit
#       @marketing = Marketing.find_by(title: params[:title])
#     end

#     def update
#       @marketing = Marketing.find_by(title: params[:title])
#       @marketing.update(marketing_params)

#       redirect_to marketing_path
#     end

#     def destroy
#       @marketing = Marketing.find_by(title: params[:title])
#       @marketing.destroy

#       redirect_to marketing_path
#     end

#     private

#     def marketing_params
#       params.require(:marketing).permit(:year, :title, :description, :img_url. :favorite)
#     end
# end
