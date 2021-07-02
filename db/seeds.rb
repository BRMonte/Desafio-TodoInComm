# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Giftcard.create!(number: '1234567851234567', password: '123456', expiration: Date.today + 8.months, message: 'Feliz aniversario')
Giftcard.create!(number: '9244567891334517', password: '123456', expiration: Date.today + 5.years, message: 'Feliz casamento')
