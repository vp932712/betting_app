# t.string "category"
# t.text "description"
# t.float "bet_amount"
# t.integer "better_id"
# t.integer "bookie_id"
# t.integer "winner"
# t.integer "loser"
# t.datetime "expires"
# t.boolean "draw"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false


class BetSerializer < ActiveModel::Serializer
  attributes :id, :category, :description, :bet_amount, :better_id, :bookie_id, :winner, :loser, :expires, :draw

  has_many :users
  has_many :betters
end
