# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "destroying database"

Cocktail.destroy_all
Ingredient.destroy_all

puts "creating empty cocktails"

10.times do
  Cocktail.create(name: Faker::Beer.name)
end

puts "creating list of ingredients"

ingredients = ["Beer", "Guiness", "IPA beer", "Weiss bier", "Sangria", "Palm wine", "Prosecco", "Malt liquor", "Cider", "Sweet Vermouth", "Sparkling wine", "Red wine", "White wine", "Rosé", "Sake", "Mead", "Soju", "Shochu", "Pastis", "Cynar", "Vermouth", "Campari", "Amaretto", "Martini", "Jägermeister", "Gin", "Vodka", "Whiskey", "Tequila", "Rum", "Sambuca", "Ouzo", "Aquavit", "Schnaps", "Grappa", "Cognac", "Arak", "Absinthe", "Cola", "Sprite", "Fanta", "Orangina", "Canada dry", "Tonic", "Fizzy water", "Root beer", "Ginger beer", "Dr Pepper", "Cherry soda", "Apple soda", "Ginger Soda", "Maracuja soda", "Lemon soda", "Pineapple soda", "Water", "Apple juice", "Orange juice", "Lemon juice", "Cherry juice", "Pineapple juice", "Grape juice", "Orange bitters", "Lemon bitters", "Ice", "Salt", "Pepper", "Tabasco", "Ginger", "Chili", "Cardamom", "Honey", "Sugar", "Mapple sirup", "Cherry", "Strawberry", "Raspberry", "Rosemary", "Basil", "Tarragon", "Cilantro", "Cucomber", "Lemon", "Lavender", "Mint", "Grapefruit", "Water Melon", "Tomatoe"]

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end

puts "there are #{Cocktail.count} cocktails"
puts "there are #{Ingredient.count} ingredients"
