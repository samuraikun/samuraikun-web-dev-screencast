class Api::V1::UsersController < ApplicationController
  def index
    users = User.all

    render json: UserSerializer.new(users).serialized_json
  end

  def show
    user = User.find(params[:id])

    render json: UserSerializer.new(user).serialized_json
  end
end
