class Profile < ApplicationRecord
  has_many :skills
  has_many :jobs

  accepts_nested_attributes_for :skills, allow_destroy: true
  accepts_nested_attributes_for :jobs, allow_destroy: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
