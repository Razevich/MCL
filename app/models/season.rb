class Season < ActiveRecord::Base
  belongs_to :tv
  before_save :check_image_url

  def check_image_url
    tv = Tv.find_by(id: self.tv_id)
    if self.img_url == nil
      self.img_url = tv.img_url
    end
  end

end
