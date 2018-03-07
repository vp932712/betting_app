# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# create_table "bets", force: :cascade do |t|
#   t.string "category"
#   t.text "description"
#   t.float "bet_amount"
#   t.integer "better_id"
#   t.integer "bookie_id"
#   t.integer "winner"
#   t.integer "loser"
#   t.datetime "expires"
#   t.boolean "draw"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "users", force: :cascade do |t|
#   t.string "name"
#   t.float "money"
#   t.integer "bookie_id"
#   t.integer "better_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
Bet.delete_all
User.delete_all


# Users Created
bob = User.create(name:"Bob", money: 1001)
sally = User.create(name:"Sally", money: 1002)
carl = User.create(name:"Carl", money: 1003)
megan = User.create(name:"Megan", money: 1004)
jeff = User.create(name:"Jeff", money: 1005)
jess = User.create(name:"Jess", money: 1006)
george = User.create(name:"George", money: 1007)
frank = User.create(name:"Frank", money: 1008)


# Bookie Bets Created
bet1 = bob.bookie_bets.create(category: "School", description: "The code challenge will get pushed back to Monday.", bet_amount: 20)
bet2 = bob.bookie_bets.create(category: "Weather", description: "It will snow this Friday.", bet_amount: 15)

bet3 = sally.bookie_bets.create(category: "Politics", description: "Bernie Sanders will say 'Billionaires' on CNN on Tuesday.", bet_amount: 35)
bet4 = sally.bookie_bets.create(category: "Weather", description: "It will reach 45Far this Saturday.", bet_amount: 50)
bet5 = sally.bookie_bets.create(category: "Politics", description: "Bete O'Rourke will get the Dem Nominee for Texas Senate race.", bet_amount: 75)

bet6 = carl.bookie_bets.create(category: "Sports", description: "The Warriors will win the title.", bet_amount: 30)
bet7 = carl.bookie_bets.create(category: "Pop Culture", description: "Get Out will win an Oscar.", bet_amount: 25)
bet8 = carl.bookie_bets.create(category: "Pop Culture", description: "Miley Cyrus will release a song called 'Wrecking Cube' this year.", bet_amount: 10)
bet9 = carl.bookie_bets.create(category: "School", description: "Gummy Bears will not be featured at the next happy hour.", bet_amount: 40)

bet10 = megan.bookie_bets.create(category: "Finances", description: "The DOW will end lower than it started today.", bet_amount: 45)


# Better Engaged in Bets
bet1.better = jeff
bet2.better = jess
bet3.better = frank
bet4.better = george
bet5.better = jeff

bet1.save
bet2.save
bet3.save
bet4.save
bet5.save






#
