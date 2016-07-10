class FilmsController < ApplicationController

  def new
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      redirect_to film_path
    else
      render "new"
    end
  end

  def index
    @films = Film.all
  end

  def show
    @film = Film.find_by(title: params[:title])
  end

  def edit
    @film = Film.find_by(title: params[:title])
  end

  def update
    @film= Film.find_by(title: params[:title])
    @film.update(film_params)

    redirect_to film_path(@film)
  end

  def destroy
    @film= Film.find_by(title: params[:title])
    @film.destory

    redirect_to film_path
  end

  private

  def film_param
    params.require(:film).permit(:title, :year, :description, :img_url)
  end

end
