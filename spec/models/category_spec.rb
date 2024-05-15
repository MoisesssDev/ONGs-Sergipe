require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'cria uma categoria' do
    it 'com sucesso' do
      category = Category.new(name: 'Categoria')
      expect(category.save).to eq(true)
    end

    it 'sem nome' do
      category = Category.new(name: '')
      expect(category.save).to eq(false)
    end
  end
end
