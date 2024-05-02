require 'rails_helper'

describe 'Voluntario visita a página inicial' do
  it 'e vê a mensagem de boas-vindas' do
    visit root_path

    expect(page).to have_content('Encontre ONGs em Sergipe')
    expect(page).to have_content('Bem-vindo ao ONGs Sergipe, dedicado a facilitar o acesso às ' \
                                 'Organizações Não Governamentais (ONGs) em Sergipe.')
    expect(page).to have_link('Buscar por ONGs')
  end

  it 'e vê a lista com 4 ONGs cadastradas' do
    create(:ong, name: 'ONG A', description: 'Descrição da ONG A')
    create(:ong, name: 'ONG B', description: 'Descrição da ONG B')
    create(:ong, name: 'ONG C', description: 'Descrição da ONG C')
    create(:ong, name: 'ONG D', description: 'Descrição da ONG D')
    create(:ong, name: 'ONG E', description: 'Descrição da ONG E')

    visit root_path

    expect(page).to have_content('ONG A')
    expect(page).to have_content('Descrição da ONG A')
    expect(page).to have_content('ONG B')
    expect(page).to have_content('Descrição da ONG B')
    expect(page).to have_content('ONG C')
    expect(page).to have_content('Descrição da ONG C')
    expect(page).to have_content('ONG D')
    expect(page).to have_content('Descrição da ONG D')
    expect(page).not_to have_content('ONG E')
    expect(page).not_to have_content('Descrição da ONG E')
    expect(page).to have_content('Aracaju, Rua das Flores, 123', count: 4)
    expect(page).to have_link('Ver detalhes', count: 4)
    expect(page).to have_selector('img[src$="cantinho_do_ceu.png"]', count: 4)
    expect(page).to have_content('Assistência Social', count: 4)
    expect(page).to have_link('Ver mais')
  end
end
