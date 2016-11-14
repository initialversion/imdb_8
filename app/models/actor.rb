class Actor < ActiveRecord::Base
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:dob] }

  validates :name, :presence => true

end
