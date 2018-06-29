class Api::V1::UsersController < ApplicationController
  def index
    @Users = User.all
    render json: @Users
  end

  def create
    @user = User.find_or_create_by(user_params)
    render json: @user
  end

  private
  def question_params
    params.require(:Users).permit(:name)
  end
end
