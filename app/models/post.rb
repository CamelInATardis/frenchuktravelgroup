class Post < ApplicationRecord
  has_attached_file :image, styles: { large: "3840x2160>", medium: "1920x1080>", thumb: "712x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  belongs_to :user
end
