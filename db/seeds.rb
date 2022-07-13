# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p = Filter.create(name: 'FirstName')
q = Filter.create(name: 'LastName')
r = Filter.create(name: 'Phone')
s = Filter.create(name: 'Email')
t = Filter.create(name: 'Zip')


