class Flower < ApplicationRecord
  belongs_to :category
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true

  validate :title, :brand, :price, :model, presence: true
  validate :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum aloud."}
  validate :title, length: {maximum: 140, too_long: "%{count} characters is the maximum aloud."}
  validate :price, numericality: { only_integer: true}, length: { maximum: 7 }

  BRAND = %W{BRAND1 BRAND2 BRAND3 BRAND4}
  FINISH = %w{BLACK WHITE NAVY BLUE}
  CONDITION = %w{NEW  EXCELENT MINT  USED PAIR POOR}
end
