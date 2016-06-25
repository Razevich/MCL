class Admin < ActiveRecord::Base

  def check_secret_code
    self.secret_code == "sunshine" ? true : false
  end
end
