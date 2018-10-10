class Tedtalk < ApplicationRecord
  belongs_to :speaker
  has_many :categories
  has_many :tags, through: :categories

  validates :title, :description, :url, presence: true
  paginates_per 10
end
