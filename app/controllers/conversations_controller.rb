class ConversationsController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  #Get all convos
def index
  @convos = Conversation.all
  render json: @convos
end

#Get a convo
def show
  render json: @convo
end

#Get all convos from a user by user id 
#/conversations/user/:user_id
def showconvos 
  @convos = Conversation.find()
end

Create a convo
def create
  @convo = Conversation.new(convo_params)
  if @convo.save
    render json: @convo, status: :created
  else
    render json: @convo.errors, status: :unprocessable_entity
  end
end

#Edit a convo
def update
  if @convo.update(convo_params)
    render json: @convo
  else
    render json: @convo.errors, status: :unprocessable_entity
  end
end

Delete a convo
def destroy
  @convo.destroy
  head :no_content
end

private

#Get a convo by convo_id and set it as @convo
def set_convo
  @convo = Conversation.find(params[:id])
end

#Params permitted for patch
def convo_params
  params.permit(:id, :participants, :messages, :read)
end

end

