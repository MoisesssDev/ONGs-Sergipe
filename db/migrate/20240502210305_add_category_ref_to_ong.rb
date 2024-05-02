class AddCategoryRefToOng < ActiveRecord::Migration[7.1]
  def change
    add_reference :ongs, :category, null: false, foreign_key: true
  end
end
