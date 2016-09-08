class Tv < ActiveRecord::Base
  belongs_to :project

  after_save :check_for_and_create_favorite

  def change_favorite
    self.favorite = false if self.favorite = true
    self.favorite = true if self.favorite = false
  end

  def check_for_and_create_favorite
    if self.favorite == true && self.favorite_changed? == true
      Favorite.create(title: self.title,
                          year: self.year,
                   description: self.description,
                       img_url: self.img_url)
    elsif self.favorite == false && self.favorite_changed? == true
      favorite = Favorite.find_by(title: self.title,
                                   year: self.year,
                            description: self.description,
                                img_url: self.img_url)
      favorite.destroy
    elsif
      self.favorite == true && self.favorite_changed? == false
      favorite = Favorite.find_by(title: self.title)

      favorite.update(title: self.title,
                        year: self.year,
                description: self.description,
                    img_url: self.img_url)
    end
  end
end
