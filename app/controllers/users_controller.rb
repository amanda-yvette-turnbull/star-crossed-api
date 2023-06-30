class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  #Get all users
  def index
    @users = User.joins(:star_sign).select('users.*, star_signs.id AS star_sign')
    render json: @users
  end

  #Get a user
  def show
    render json: @user
  end

  #Create a user
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #Edit a user
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #Delete a user
  def destroy
    @user.destroy
    head :no_content
  end

  private

  #Get a user and set it as @user
  def set_user
    @user = User.joins(:star_sign).select('users.*, star_signs.id AS star_sign').find(params[:id])
  end
  #Params permitted for patch

  def user_params
    params.permit(:auth0_id, :name, :age, :email, :gender, :preference, :bio, :birthday, :image, :star_sign_id, :matches, :compatibility)
  end

end

