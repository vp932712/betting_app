class User < ApplicationRecord
  has_many :betters, through: :bookie_bets, source: :better
	has_many :bookie_bets, foreign_key: :bookie_id, class_name: "Bet"

	has_many :bookies, through: :better_bets, source: :bookie
	has_many :better_bets, foreign_key: :better_id, class_name: "Bet"


  

end
