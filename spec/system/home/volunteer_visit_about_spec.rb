require 'rails_helper'

describe 'Voluntário visita a página Sobre' do
  it 'e vê a mensagem de boas-vindas' do
    visit root_path

    click_on 'About'

    expect(page).to have_content('Bem-vindo(a) à Connect Sergipe')
    
  end
end
