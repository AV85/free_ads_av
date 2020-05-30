require 'ffaker'

User.destroy_all
Category.destroy_all
Ad.destroy_all

User.create!(
  email: 'admin@email.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Александр',
  last_name: 'Вихор',
  phone: FFaker::PhoneNumberUA.mobile_phone_number,
  address: 'Украина, Донецкая обл., г.Бахмут',
  city: 'Бахмут',
  street: 'ул. Медведева',
  building: '27',
  role: 3
)

User.create!(
  email: 'moderator@email.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: FFaker::NameRU.first_name,
  last_name: FFaker::NameRU.last_name,
  phone: FFaker::PhoneNumberUA.mobile_phone_number,
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
  phone: FFaker::PhoneNumberUA.mobile_phone_number,
  address: FFaker::AddressRU.province,
  city: FFaker::AddressRU.city,
  street: FFaker::AddressRU.street_name,
  building: FFaker::AddressRU.street_number,
  role: 1
)

user2 = User.create!(
  email: 'user2@email.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: FFaker::NameRU.first_name,
  last_name: FFaker::NameRU.last_name,
  phone: FFaker::PhoneNumberUA.mobile_phone_number,
  address: FFaker::AddressRU.province,
  city: FFaker::AddressRU.city,
  street: FFaker::AddressRU.street_name,
  building: FFaker::AddressRU.street_number,
  role: 1
)

user3 = User.create!(
  email: 'user3@email.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: FFaker::NameRU.first_name,
  last_name: FFaker::NameRU.last_name,
  phone: FFaker::PhoneNumberUA.mobile_phone_number,
  address: FFaker::AddressRU.province,
  city: FFaker::AddressRU.city,
  street: FFaker::AddressRU.street_name,
  building: FFaker::AddressRU.street_number,
  role: 1
)

Category.create!(
  name: 'Детские товары',
  description: 'Объявления о покупке / продаже детских товаров'
)

Category.create!(
  name: 'Животные',
  description: 'Объявления о покупке / продаже / дара животных'
)

Category.create!(
  name: 'Запчасти для транспорта',
  description: 'Объявления о покупке / продаже запчастей для транспорта'
)

Category.create!(
  name: 'Недвижимость',
  description: 'Объявления о покупке / продаже / аренде недвижимости'
)

Category.create!(
  name: 'Обмен', description: 'Объявления в которых пользователи предлогают обмен'
)

Category.create!(
  name: 'Одежда',
  description: 'Объявления о покупке / продаже одежды'
)

Category.create!(
  name: 'Отдам даром', description: 'Объявления о бесплатных товарах'
)

Category.create!(
  name: 'Работа',
  description: 'Объявления о вакансиях и требуемых работниках'
)

Category.create!(
  name: 'Транспорт',
  description: 'Объявления о покупке / продаже транспорта'
)

Category.create!(
  name: 'Электроника',
  description: 'Объявления о покупке / продаже электронной техники'
)

Ad.create!(
  name: 'Продам 3-х комнатную квартиру',
  text: FFaker::LoremRU.paragraph,
  price: 90_000,
  user_id: user.id
)

Ad.create!(
  name: 'Продам отличный дом',
  text: FFaker::LoremRU.paragraph,
  price: 1_000_000,
  user_id: user.id
)

Ad.create!(
  name: 'Продам супер автомобиль',
  text: FFaker::LoremRU.paragraph,
  price: 55_000,
  user_id: user.id
)

Ad.create!(
  name: 'Продам шубу',
  text: FFaker::LoremRU.paragraph,
  price: 5000,
  user_id: user2.id
)

Ad.create!(
  name: 'Продам кота',
  text: FFaker::LoremRU.paragraph,
  price: 2000,
  user_id: user2.id
)

Ad.create!(
  name: 'Продам собаку',
  text: FFaker::LoremRU.paragraph,
  price: 2000,
  user_id: user2.id
)

Ad.create!(
  name: 'Продам мотоцикл',
  text: FFaker::LoremRU.paragraph,
  price: 7000,
  user_id: user3.id
)

Ad.create!(
  name: 'Продам Мерседес',
  text: FFaker::LoremRU.paragraph,
  price: 100_000,
  user_id: user3.id
)

Ad.create!(
  name: 'Продам лодку',
  text: FFaker::LoremRU.paragraph,
  price: 10_000,
  user_id: user3.id
)

Ad.create!(
  name: 'Продам замечательные сапоги',
  text: FFaker::LoremRU.paragraph,
  price: 1000,
  user_id: user3.id
)

Ad.create!(
  name: 'Продам отличный велосипед',
  text: FFaker::LoremRU.paragraph,
  price: 5000,
  user_id: user.id
)

Ad.create!(
  name: 'сдам в аренду автомобиль',
  text: FFaker::LoremRU.paragraph,
  price: 200,
  user_id: user.id
)