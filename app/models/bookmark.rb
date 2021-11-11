class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
  validates_uniqueness_of :list, scope: :movie

  belongs_to :movie
  belongs_to :list
end
