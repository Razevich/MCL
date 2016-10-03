# class SeasonsController < ApplicationController

#   def index
#     @seasons = Season.all
#   end

#   def show
#     @season = Season.find_by(title: params[:title])
#   end

#   def new

#   end

#   def create
#     @season = Season.new(season_params)
#     if @season.save
#       redirect_to season_path(@season)
#     else
#       render "new"
#     end
#   end

#   def edit
#     @season = Season.find_by(title: params[:title])
#   end

#   def update
#     @season = Season.find_by(title: params[:title])
#     @season.update(season_params)

#     redirect_to season_path(@season)
#   end

#   def destroy
#     @season = Season.find_by(title: params[:title])
#     @season.destroy

#     redirect_to season_path
#   end

#   private

#   def season_params
#     params.require(:seasons).permit(:title, :img_url, :year, :eppisode_count, :favorite)
#   end

# end
