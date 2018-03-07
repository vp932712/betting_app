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

class BetsController < ApplicationController

  def index
    @bets = Bet.all
    render json: @bets
  end

  def create
    @bet = Bet.create(bet_params)
    bet = @bet.bet_amount
    @user = User.find(@bet.bookie_id)

    amount = @user.money - bet
    @user.update(money: amount)
    @bet.save

    render json: @bet
  end

  def update
    @bet = Bet.find(params[:id])

    if !(@bet.better_id?)
    @bet.update_attributes(bet_params)
    @user = User.find(@bet.better_id)
    amount = @user.money - @bet.bet_amount
    @user.update(money: amount )
  elsif !(@bet.loser?)

    @bet.update_attributes(bet_params)

  end



    render json: @bet
end





  private

  def bet_params
   params.require(:bet).permit(:category, :bet_amount, :description, :better_id, :bookie_id, :winner, :loser)
  end


end
