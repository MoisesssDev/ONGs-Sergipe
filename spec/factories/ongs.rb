FactoryBot.define do
  factory :ong do
    name { 'Cantinho do céu' }
    email { 'cantinhodoceu@gmail.com' }
    whatsapp { '79999999999' }
    instagram { 'cantinhodoceu' }
    description { 'ONG que cuida de crianças carentes. Ajudam com alimentos e educação, sempre podemos fazer mais' }
    address { 'Rua das Flores, 123' }
    city { 'Aracaju' }
    image { Rails.root.join('spec/support/images/cantinho_do_ceu.png') }
    category { create(:category) }
  end
end
