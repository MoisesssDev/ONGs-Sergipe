require 'rails_helper'

describe 'Voluntário busca ONGs' do
  it 'por nome' do
    create(:ong, name: 'ONG A', description: 'Descrição da ONG A')
    create(:ong, name: 'ONG B', description: 'Descrição da ONG B')

    visit root_path
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

  it 'por descrição' do
    create(:ong, name: 'ONG A', description: 'Descrição da ONG A')
    create(:ong, name: 'ONG B', description: 'Descrição da ONG B')

    visit root_path
    fill_in 'query', with: 'Descrição da ONG B'
    click_on 'buscar'

    expect(page).to have_content('1 ONG foi encontrada.')
    expect(page).to have_content('ONG B')
    expect(page).to have_content('Descrição da ONG B')
    expect(page).to have_content('Aracaju, Rua das Flores, 123')
    expect(page).to have_link('Ver detalhes')
    expect(page).to have_selector('img[src$="cantinho_do_ceu.png"]')
    expect(page).to have_content('Assistência Social')
  end

  it 'e não há resultados' do
    visit root_path
    fill_in 'query', with: 'ONG C'
    click_on 'buscar'

    expect(page).to have_content('Nenhuma ONG encontrada.')
  end
end
