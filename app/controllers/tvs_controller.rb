class TvsController < ApplicationController
  before_action :set_tv, only: [:show, :edit, :update, :destroy]


  def index
    @tvs = Tv.all
  end

  def show
  end


  def new
    @tv = Tv.new
  end


  def edit
  end


  def create
    @tv = Tv.new(tv_params)

    respond_to do |format|
      if @tv.save
        format.html { redirect_to @tv, notice: 'TV Show was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @tv.update(tv_params)
        format.html { redirect_to @tv, notice: 'TV Show was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @tv.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'TV Show was successfully destroyed.' }
    end
  end

  private
    def set_tv
      @tv = Tv.find(params[:id])
    end

    def tv_params

      params.require(:tv).permit(:year, :title, :network, :season, :description, :img_url, :favorite)
    end
end

