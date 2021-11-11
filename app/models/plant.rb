class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_tags
  has_many :tags, through: :plant_tags

  validates :name, presence: true
  validates :photo_url, presence: true
  validates :color, inclusion: { in: %w[ green yellow blue purple ] }
end
