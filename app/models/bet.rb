class Bet < ApplicationRecord
  belongs_to :better, foreign_key: "better_id", class_name: "User"
  belongs_to :bookie, foreign_key: "bookie_id", class_name: "User"
end
