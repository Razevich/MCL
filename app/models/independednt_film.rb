class IndependedntFilm < ActiveRecord::Base

  def return_favorites
    array = []
    self.each do |object|
      if object.favorite == true
        array << object
      end
    end
    return array
  end

end
