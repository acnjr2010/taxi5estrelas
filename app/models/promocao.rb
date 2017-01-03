class Promocao < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x100>", thumb: "100x100>", default_url: "/images/missing.png" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :texto, :image, :avatar, presence: true

  has_attached_file :image, styles: { medium: "300x100>", thumb: "100x100>", default_url: "/images/missing.png" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
