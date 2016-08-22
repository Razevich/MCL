module ProjectsHelper

	def show_film
    @film = Film.find_by(title: params[:title])
  end


end
