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

Category.create!(name: 'Детские товары')

Category.create!(name: 'Животные')

Category.create!(name: 'Запчасти для транспорта')

Category.create!(name: 'Недвижимость')

Category.create!(name: 'Обмен')

Category.create!(name: 'Одежда')

Category.create!(name: 'Отдам даром')

Category.create!(name: 'Работа')

Category.create!(name: 'Транспорт')

Category.create!(name: 'Электроника')

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