require 'rails_helper'

describe 'Voluntario visita a página inicial' do
  it 'e vê a mensagem de boas-vindas' do
    visit root_path
    expect(page).to have_content('Bem-vindo ao sistema de voluntariado!')
  end
end
