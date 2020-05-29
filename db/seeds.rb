require 'ffaker'

User.destroy_all

User.create!(
  email: 'admin@email.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Александр',
  last_name: 'Вихор',
  address: 'Украина, Донецкая обл., г.Бахмут',
  city: 'Бахмут',
  street: 'ул. Медведева',
  building: 'д. 27',
  role: 3
)

User.create!(
  email: 'moderator@email.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: FFaker::NameRU.first_name,
  last_name: FFaker::NameRU.last_name,
  address: FFaker::AddressRU.province,
  city: FFaker::AddressRU.city,
  street: FFaker::AddressRU.street_name,
  building: FFaker::AddressRU.street_number,
  role: 2
)

user = User.create!(
  email: 'user@email.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: FFaker::NameRU.first_name,
  last_name: FFaker::NameRU.last_name,
  address: FFaker::AddressRU.province,
  city: FFaker::AddressRU.city,
  street: FFaker::AddressRU.street_name,
  building: FFaker::AddressRU.street_number,
  role: 1
)

Category.create!(
  name: 'Недвижимость',
  description: 'Объявления о покупке / продаже / аренде недвижимости'
)

Category.create!(
  name: 'Транспорт',
  description: 'Объявления о покупке / продаже транспорта'
)

Category.create!(
  name: 'Запчасти для транспорта',
  description: 'Объявления о покупке / продаже запчастей для транспорта'
)

Category.create!(
  name: 'Электроника',
  description: 'Объявления о покупке / продаже электронной техники'
)

Category.create!(
  name: 'Одежда',
  description: 'Объявления о покупке / продаже одежды'
)

Category.create!(
  name: 'Животные',
  description: 'Объявления о покупке / продаже / дара животных'
)

Category.create!(
  name: 'Работа',
  description: 'Объявления о вакансиях и требуемых работниках'
)

Category.create!(
  name: 'Детские товары',
  description: 'Объявления о покупке / продаже детских товаров'
)

Category.create!(
  name: 'Отдам даром', description: 'Объявления о бесплатных товарах'
)

Category.create!(
  name: 'Обмен', description: 'Объявления в которых пользователи предлогают обмен'
)

Ad.create!(
  name: 'Продам 3-х комнатную квартиру!',
  text: FFaker::LoremRU.paragraph,
  price: 1000,
  user_id: user.id
)

Ad.create!(
  name: 'Продам дом!',
  text: FFaker::LoremRU.paragraph,
  price: 3000,
  user_id: user.id
)

Ad.create!(
  name: 'Продам автомобиль',
  text: FFaker::LoremRU.paragraph,
  price: 5000,
  user_id: user.id
)