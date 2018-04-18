class Print < ApplicationRecord
  validates_presence_of :title, :price, :image_url
end
