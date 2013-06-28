# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create ([
  {name: 'yelinaung', about: 'this is me!', email: 'yelinaung@me.com', password: '12345678', password_confirmation: '12345678'},
  {name: 'tharhtet', about: 'this is tharhtet!', email: 'tharhtet@me.com', password: '12345678', password_confirmation: '12345678'}
])
