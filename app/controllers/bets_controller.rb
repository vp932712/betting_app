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


  def show
    @bet = Bet.find(params[:id])
    render json: @bet
  end



  def create
    @bet = Bet.new(bet_params)

    if @bet.save
      render json: @bet
    else
      render json: {"error": "you suck "}
    end

  end





  private

  def bet_params
    params.permit(:name, :money)
  end





end
