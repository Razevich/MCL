class Project < ActiveRecord::Base
    has_many :tvs
    has_many :films
    has_many :marketings
    has_many :indie_films

    # def create_object(object)
    #   if object == "tv"
    #     self.tv.new(tv_params)
    #   elsif object == "film"
    #     self.tv.net(film_params)
    #   elsif object == "independednt_films"
    #     self.tv.net(independednt_films_params)
    # end

end
