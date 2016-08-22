class Project < ActiveRecord::Base
  has_many :films
  has_many :tvs
  has_many :marketings
  # has_many :independent_Films
end
