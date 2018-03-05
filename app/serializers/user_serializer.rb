class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :better_id, :bookie_id, :money
  # has_many :bets

  


end
