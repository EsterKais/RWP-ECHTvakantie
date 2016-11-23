class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      MessageMailer.new_message(@message).deliver_later
      respond_to do |format|
              format.html {}
              format.js {}
            end
          else
            respond_to do |format|
              format.html {}
              format.js { render 'error'}
            end
          end
  end

  private

    def message_params
      params.require(:message).permit(:name, :email, :content)
    end

end
