require 'rails_helper'

describe 'Voluntário busca ONGs' do
  it 'por nome e ONG existe' do
    create(:ong, name: 'ONG A', description: 'Descrição da ONG A')
    create(:ong, name: 'ONG B', description: 'Descrição da ONG B')
    create(:ong, name: 'ONG C', description: 'Descrição da ONG C')
    create(:ong, name: 'ONG D', description: 'Descrição da ONG D')
    create(:ong, name: 'ONG E', description: 'Descrição da ONG E')

    visit root_path
    click_on 'Buscar por ONGs'
    fill_in 'query', with: 'ONG A'
    click_on 'buscar'

    expect(page).to have_content('1 ONG foi encontrada.')
    expect(page).to have_content('ONG A')
    expect(page).to have_content('Descrição da ONG A')
    expect(page).to have_content('Aracaju, Rua das Flores, 123')
    expect(page).to have_link('Ver detalhes')
    expect(page).to have_selector('img[src$="cantinho_do_ceu.png"]')
    expect(page).to have_content('Assistência Social')
  end
end
