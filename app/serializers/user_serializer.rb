class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :better_id, :bookie_id, :money
  has_many :better_bets
  has_many :bookie_bets




end
