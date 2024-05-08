require 'rails_helper'

describe 'Voluntario visita a página inicial' do
  it 'e vê a mensagem de boas-vindas' do
    visit root_path

    expect(page).to have_content('ONGs em Sergipe')
    expect(page).to have_content('Descubra e Apoie Causas Locais. Explore ONGs e Faça a Diferença na Comunidade!')
    expect(page).to have_button('buscar')
  end

  it 'e vê a lista com 4 ONGs cadastradas' do
    create(:ong, name: 'ONG A', description: 'Descrição da ONG A')
    create(:ong, name: 'ONG B', description: 'Descrição da ONG B')
    create(:ong, name: 'ONG C', description: 'Descrição da ONG C')
    create(:ong, name: 'ONG D', description: 'Descrição da ONG D')

    visit root_path

    expect(page).to have_content('ONG A')
    expect(page).to have_content('Descrição da ONG A')
    expect(page).to have_content('ONG B')
    expect(page).to have_content('Descrição da ONG B')
    expect(page).to have_content('ONG C')
    expect(page).to have_content('Descrição da ONG C')
    expect(page).not_to have_content('ONG D')
    expect(page).not_to have_content('Descrição da ONG D')
    expect(page).to have_content('Aracaju, Rua das Flores, 123', count: 3)
    expect(page).to have_link('Ver detalhes', count: 3)
    expect(page).to have_selector('img[src$="cantinho_do_ceu.png"]', count: 3)
    expect(page).to have_content('Assistência Social', count: 3)
    expect(page).to have_link('Ver mais')
  end
end
