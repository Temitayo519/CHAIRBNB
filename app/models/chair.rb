class Chair < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :name, presence: true
  validates :price, presence: true
  validates :photos, presence: true
end
