class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "Indian", "Peruvian", "italian", "japanese", "french", "belgian"] }
end
