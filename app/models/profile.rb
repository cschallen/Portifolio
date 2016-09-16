class Profile < ApplicationRecord
  has_many :skills
<<<<<<< HEAD
  has_many :jobs

  accepts_nested_attributes_for :skills, allow_destroy: true
  accepts_nested_attributes_for :jobs, allow_destroy: true
=======
  
  accepts_nested_attributes_for :skills, allow_destroy: true
>>>>>>> 706b46abaa1cb6db0663d27b927481aae9d66e32
end
