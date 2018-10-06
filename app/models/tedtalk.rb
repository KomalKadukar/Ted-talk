class Tedtalk < ApplicationRecord
  belongs_to :speaker
  belongs_to :tag

  validates :title, :description, :url, presence: true
end
