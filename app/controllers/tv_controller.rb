class TvController < ApplicationController

  def new
  end

  def create
    @tv = Tv.new(tv_params)
    if @tv.save
      redirect_to tv_path(@tv)
    else
      render "new"
    end
  end

  def index
    @tv = Tv.all
  end

  def show
    @tv = Tv.find_by(title: paramas[:title])
  end

  def edit
    @tv = Tv.find_by(title: paramas[:title])
  end

  def update
    @tv = Tv.find_by(title: paramas[:title])
    @tv.update(tv_params)
  end

  def destroy
    @tv = Tv.find_by(title: paramas[:title])
    @tv.destroy

    redirect_to tv_path
  end

  private

  def tv_params
    params.require(:tv).permit(:title, :description, :img_url, :favorite)
  end
end
