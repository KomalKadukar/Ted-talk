class Tedtalk < ApplicationRecord
  belongs_to :speaker
  has_many :categories
  has_many :tags, though: :categories

  validates :title, :description, :url, presence: true
end
