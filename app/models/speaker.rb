class Speaker < ApplicationRecord
  has_many :tedtalks, dependent: :destroy

  validates :name, presence:true, uniqueness:true
  paginates_per 10
end
