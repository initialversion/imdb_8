class Movie < ActiveRecord::Base
  # Direct associations

  belongs_to :director

  has_many   :characters,
             :class_name => "Casting",
             :dependent => :destroy

  # Indirect associations

  has_many   :actors,
             :through => :characters,
             :source => :actor

  # Validations

  validates :title, :uniqueness => { :scope => [:year, :director_id] }

  validates :title, :presence => true

end
