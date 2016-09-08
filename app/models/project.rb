class Project < ActiveRecord::Base
    has_many :tvs
    has_many :films
    has_many :marketings
    has_many :independednt_films

end
