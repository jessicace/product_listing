class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :name, :price, :gst, :quantity, presence: true;
  validates :price, :gst, :quantity, numericality: {  greater_than: 0 }
  
end
