require 'rails_helper'

describe 'Voluntario visita a página inicial' do
  it 'e vê a mensagem de boas-vindas' do
    visit root_path

    expect(page).to have_content('Encontre ONGs em Sergipe')
    expect(page).to have_content('Bem-vindo ao ONGs Sergipe, dedicado a facilitar o acesso às ' \
                                 'Organizações Não Governamentais (ONGs) em Sergipe.')
    expect(page).to have_link('Buscar por ONGs')
  end
end
