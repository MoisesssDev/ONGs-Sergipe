require 'rails_helper'

RSpec.describe Ong, type: :model do
  context 'cria uma ONG' do
    it 'com sucesso' do
      create(:category, name: 'Animais')
      ong = Ong.new(name: 'ONG', description: 'Descrição', email: 'ong@gmail.com',
                    city: 'Aracaju', address: 'Rua 1, 123', category_id: 1)

      expect(ong.save).to eq(true)
    end

    it 'sem nome' do
      create(:category, name: 'Animais')
      ong = Ong.new(name: '', description: 'Descrição', email: 'ong@gmail.com',
                    city: 'Aracaju', address: 'Rua 1, 123', category_id: 1)

      expect(ong.save).to eq(false)
    end

    it 'sem descrição' do
      create(:category, name: 'Animais')
      ong = Ong.new(name: 'ONG', description: '', email: 'ong@gmail.com',
                    city: 'Aracaju', address: 'Rua 1, 123', category_id: 1)

      expect(ong.save).to eq(false)
    end

    it 'sem email' do
      create(:category, name: 'Animais')
      ong = Ong.new(name: 'ONG', description: 'Descrição', email: '',
                    city: 'Aracaju', address: 'Rua 1, 123', category_id: 1)

      expect(ong.save).to eq(false)
    end

    it 'sem cidade' do
      create(:category, name: 'Animais')
      ong = Ong.new(name: 'ONG', description: 'Descrição', email: 'ong@gmail.com',
                    city: '', address: 'Rua 1, 123', category_id: 1)

      expect(ong.save).to eq(false)
    end

    it 'sem endereço' do
      create(:category, name: 'Animais')
      ong = Ong.new(name: 'ONG', description: 'Descrição', email: 'ong@gmail.com',
                    city: 'Aracaju', address: '', category_id: 1)

      expect(ong.save).to eq(false)
    end
  end
end
