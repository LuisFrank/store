class Flower < ApplicationRecord
  belongs_to :category
  # mount_uploader :image, ImageUploader
  mount_uploaders :images, ImageUploader
  belongs_to :user, optional: true

  validates :title, :brand, :price, :model, presence: true
  validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum aloud."}
  validates :title, length: {maximum: 140, too_long: "%{count} characters is the maximum aloud."}
  validates :price, numericality: { only_integer: true}, length: { maximum: 7 }

  BRAND = %W{BRAND1 BRAND2 BRAND3 BRAND4}
  FINISH = %w{BLACK WHITE NAVY BLUE}
  CONDITION = %w{NEW  EXCELENT MINT  USED PAIR POOR}
end
