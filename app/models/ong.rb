class Ong < ApplicationRecord
  has_one_attached :image
  belongs_to :category

  def self.search(query)
    return Ong.all if query.blank?

    where('name LIKE :query OR description LIKE :query', query: "%#{query}%")
  end
end
