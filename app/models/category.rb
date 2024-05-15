class Category < ApplicationRecord
  has_many :ongs, dependent: :destroy
  validates :name, presence: true
end
