class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: {user: UserSerializer.new(current_user),
      status: :accepted}
  end


  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      @token = encode_token(email: @user.email)
      render json: {user: UserSerializer.new(@user), jwt: @token},
        status: :created
    else
      render json: {error: "Failed to create user."}, status: :not_acceptable
    end
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :email, :password, :home_neighborhood)
  end

end
