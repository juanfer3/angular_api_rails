# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
5.times do |num|
    num += 1
    Article.create!(
        name: "Article #{num}",
        description: "Sample description for article #{num}",
        price: 100.0,
        cant: 3.0
    )
end
=end
=begin
User.create!(
    email:'juan@ruby.com', password:'12345678', password_confirmation: '12345678'
)
=end