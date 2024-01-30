class Book < ApplicationRecord
  belongs_to :genre
  scope :latest, -> { order(created_at: :desc).limit(6) }

  def self.search(q)
    where('title ILIKE ?', "%#{q}%")
  end
end
