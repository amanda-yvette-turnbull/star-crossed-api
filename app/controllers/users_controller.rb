class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :set_user_by_auth, only: [:showauth]
  skip_before_action :verify_authenticity_token


  # Get all users
  def index
    @users = User.joins(:star_sign).select('users.*, star_signs.id AS star_sign')
    render json: @users
  end

  # Get a user
  def show
    render json: @user
  end

  # Get a user by auth0 id
  def showauth
    if @user.nil?
      puts 'not a real user!'
    else
      render json: @user
    end
  end

  def showpotentials
    @user = User.select('preference').find(params[:id])
    @users = User.joins(:star_sign).select('users.*, star_signs.id AS star_sign')
    @preferences = []
    JSON.parse(@user.preference).each do |gender|
      @preferences += @users.select('users.*, star_signs.id AS star_sign').where(gender: gender)
    end
    render json: @preferences
  end

  # Create a user
  def create
    @user = User.new(user_params)
    @user.avatar.attach(params[:avatar])
    puts @user.avatar
    puts "it's here!"
    if @user.save
      @user.update(image: url_for(@user.avatar))
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # Edit a user
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # Delete a user
  def destroy
    @user.destroy
    head :no_content
  end

  private

  # Get a user and set it as @user
  def set_user
    @user = User.joins(:star_sign).select('users.*, star_signs.id AS star_sign').find(params[:id])
  end

  # Get a user by auth0 info
  def set_user_by_auth
    @user = User.joins(:star_sign).select('users.*, star_signs.id AS star_sign').find_by( auth0_id: params[:auth0_id])
  end

  # Params permitted for patch

  def user_params
    params.permit(:auth0_id, :name, :age, :email, :gender, :preference, :bio, :birthday, :image, :star_sign_id, :matches, :compatibility)
  end

end

