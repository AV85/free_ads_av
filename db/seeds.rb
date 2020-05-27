User.destroy_all

User.create!(email: 'admin@email.com',
             password: '123456',
             password_confirmation: '123456',
             first_name: 'Александр',
             last_name: 'Вихор',
             address: 'Украина, Донецкая обл., г.Бахмут ',
             role: 3)