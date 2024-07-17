require 'rails_helper'

describe 'Voluntario visualiza detalhes da ONG' do
  it 'sucesso' do
    create(:ong, name: 'ONG A', description: 'Descrição da ONG A')

    visit root_path
    fill_in 'query', with: 'ONG A'
    click_on 'buscar'

    click_on 'Ver detalhes'

    expect(page).to have_content('ONG A')
    expect(page).to have_content('Descrição da ONG A')
    expect(page).to have_content('Aracaju, Rua das Flores, 123')
    expect(page).to have_selector('img[src$="cantinho_do_ceu.png"]')
    expect(page).to have_content('cantinhodoceu@gmail.com')
    expect(page).to have_content('79999999999')
  end
end
