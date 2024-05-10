require 'rails_helper'

describe 'Voluntario busca ONGs por categoria ' do
  it 'e encontra ONGs' do
    # Arrange
    category = create(:category, name: 'Animais')
    create(:ong, name: 'ONG dos Animais', category:)
    create(:ong, name: 'ONG dos Idosos')
    create(:ong, name: 'ONG dos Crianças')

    # Act
    visit root_path
    click_on 'Animais'

    # Assert
    expect(page).to have_content('ONG dos Animais')
    expect(page).not_to have_content('ONG dos Idosos')
    expect(page).not_to have_content('ONG dos Crianças')
  end

  it 'e não encontra ONGs' do
    # Arrange
    create(:category, name: 'Animais')
    create(:ong, name: 'ONG de Assistência Social')

    # Act
    visit root_path
    click_on 'Animais'

    # Assert
    expect(page).to have_content('Nenhuma ONG encontrada')
  end
end
