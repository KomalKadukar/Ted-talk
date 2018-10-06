class Speaker < ApplicationRecord
  has_many :tedtalks, dependent: :destroy

  validates :name, presence:true, uniqueness:true
end
