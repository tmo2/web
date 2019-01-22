class Category < ActiveRecord::Base
  has_many :images

  def image_url
    self.images.first&.url.presence || "house.png"
  end
end
