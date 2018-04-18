class Print < ApplicationRecord
  validates_presence_of :title, :price, :image_url
  mount_uploader :image_url, PrintUploader
end
