class Job < ApplicationRecord
  belongs_to :profile, optional: true

  has_attached_file :imag, styles: { medium: "300x300>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imag, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
