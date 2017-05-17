class Restaurant < ApplicationRecord
  CATEGORIES  = ["chinese", "italien", "gastronomique", "fusion", "français", "japonais"]
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: CATEGORIES, allow_nil: false}
end
