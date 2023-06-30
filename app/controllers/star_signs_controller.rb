class StarSignsController < ApplicationController
  before_action :set_star_sign, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  #Get all star_signs
  def index
    @star_signs = StarSign.all
    render json: @star_signs
  end

  #Get a star_sign
  def show
    render json: @star_sign
  end

  #Create a star_sign
  # def create
  #   @star_sign = StarSign.new(star_sign_params)
  #   if @star_sign.save
  #     render json: @star_sign, status: :created
  #   else
  #     render json: @star_sign.errors, status: :unprocessable_entity
  #   end
  # end

  #Edit a star_sign
  def update
    if @star_sign.update(star_sign_params)
      render json: @star_sign
    else
      render json: @star_sign.errors, status: :unprocessable_entity
    end
  end

  #Delete a star_sign
  # def destroy
  #   @star_sign.destroy
  #   head :no_content
  # end

  private

  #Get a star_sign and set it as @star_sign
  def set_star_sign
    @star_sign = StarSign.find(params[:id])
  end
  #Params permitted for patch

  def star_sign_params
    params.permit(:blurb, :image, :default_compatibility)
  end

end
