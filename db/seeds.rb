category_one = Category.create(name: 'Animais')
category_two = Category.create(name: 'Assistência Social')
category_three = Category.create(name: 'Educação')
category_four = Category.create(name: 'Saúde')
category_five = Category.create(name: 'Meio Ambiente')
category_six = Category.create(name: 'Cultura')
category_seven = Category.create(name: 'Esporte')
category_eight = Category.create(name: 'Direitos Humanos')
category_nine = Category.create(name: 'Desenvolvimento Comunitário')
Category.create(name: 'Arte e Cultura')
Category.create(name: 'Tecnologia e Inovação Social')
Category.create(name: 'Inclusão Social')


FactoryBot.create(:ong, category: category_one)
FactoryBot.create(:ong, name: 'Amor a vida', category: category_two)
FactoryBot.create(:ong, name: 'Viva bem', category: category_three)
FactoryBot.create(:ong, name: 'Viva a vida', category: category_four)
FactoryBot.create(:ong, name: 'Cuida dos outros', category: category_five)
FactoryBot.create(:ong, name: 'Educação para todos', category: category_six)
FactoryBot.create(:ong, name: 'Criança feliz', category: category_seven)
FactoryBot.create(:ong, name: 'Amor ao próximo', category: category_eight)
FactoryBot.create(:ong, name: 'Comunidade unida', category: category_nine)