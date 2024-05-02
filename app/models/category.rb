class Category < ApplicationRecord
  has_many :ongs, dependent: :destroy
end
