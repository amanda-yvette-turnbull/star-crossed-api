class MessagesController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  #Get all messages
  def index
    @messages = Message.all
    render json: @messages
  end

  #Get a message
  def show
    render json: @message
  end

  Create a message
  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message, status: :created
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  #Edit a message
  def update
    if @message.update(message_params)
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  Delete a message
  def destroy
    @message.destroy
    head :no_content
  end

  private

  #Get a message and set it as @message
  def set_message
    @message = Message.find(params[:id])
  end

  #Params permitted for patch
  def message_params
    params.permit(:id, :user_id, :conversation_id, :contents :created_at)
  end

end
  
  
