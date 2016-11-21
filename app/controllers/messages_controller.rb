class MessagesController < ApplicationController

  def new
      @message = Message.new
    end

  def create
    @message = Message.new(message_params)

    if @message.save
      MessageMailer.new_message(@message).deliver_later
      redirect_to contact_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

  private

    def message_params
      params.require(:message).permit(:name, :email, :content)
    end

end
