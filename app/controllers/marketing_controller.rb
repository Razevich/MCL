class MarketingController < ApplicationController

    def index
      @marketings = Marketing.all
    end

    def show
      @marketing = Marketing.find_by(title: params[:title])
    end

    def new

    end

    def create
      @marketing = Marketing.new(marketing_params)
      if @marketing.save
        redirect_to marketing_path
      else
        render "new"
      end
    end

    def edit
      @marketing = Marketing.find_by(title: params[:title])
    end

    def update
      @marketing = Marketing.find_by(title: params[:title])
      @marketing.update(marketing_params)

      redirect_to marketing_path
    end

    def destroy
      @marketing = Marketing.find_by(title: params[:title])
      @marketing.destroy

      redirect_to marketing_path
    end

    private

    def marketing_params
      params.require(:marketing).permit(:year, :title, :description, :img_url. :favorite)
    end
end
