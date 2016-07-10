class Admin < ActiveRecord::Base

  has_secure_password

  def check_secret_code
    self.secret_code == "sunshine" ? true : false
  end
end
