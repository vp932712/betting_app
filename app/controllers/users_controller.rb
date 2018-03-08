# t.string "name"
# t.float "money"
# t.integer "bookie_id"
# t.integer "better_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false

class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def show
    @user = User.find(params[:id])
    render json: @user
  end



  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json:({"error": "you suck "})
    end

  end




  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end


  private

  def user_params
    params.require(:user).permit(:money)
  end

end
