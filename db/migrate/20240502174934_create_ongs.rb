class CreateOngs < ActiveRecord::Migration[7.1]
  def change
    create_table :ongs do |t|
      t.string :name
      t.string :email
      t.string :whatsapp
      t.string :instagram
      t.text :description
      t.string :address
      t.string :city
      t.string :image

      t.timestamps
    end
  end
end
