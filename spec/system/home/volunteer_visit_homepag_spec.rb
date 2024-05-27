require 'rails_helper'

describe 'Voluntario visita a página inicial' do
  it 'e vê a mensagem de boas-vindas' do
    visit root_path

    expect(page).to have_content('Connect Sergipe')
    expect(page).to have_content('Descubra e Apoie Causas Locais. Explore ONGs e Faça a Diferença na Comunidade!')
    expect(page).to have_button('buscar')
  end

  it 'e vê mensagem Sobre nós' do
    visit root_path

    click_on 'About'

    expect(page).to have_content('Sobre nós')
    expect(page).to have_content('Para que essa plataforma foi criada?')
    expect(page).to have_content('Nossa visão')
  end
end
