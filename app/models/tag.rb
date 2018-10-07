class Tag < ApplicationRecord
  has_many :categories
  has_many :tedtalks, through: :categories

  validates :name, presence:true, uniqueness:true
end
