class Movie < ActiveRecord::Base
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :scope => [:year, :director_id] }

  validates :title, :presence => true

end
