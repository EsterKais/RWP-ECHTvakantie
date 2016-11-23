class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      MessageMailer.new_message(@message).deliver_later
      respond_to do |format|
              #NULL ERROR ARRAYS
              @errorName = []
              @errorContent = []
              format.html {redirect_to contact_path, notice: 'Je bericht is gestuurd.'}
              format.js {flash[:notice] = "Bedankt, je bericht is ontvangen!"}
            end
          else
            respond_to do |format|
              format.html { redirect_to contact_path }
              format.js {flash[:notice] = "Sorry, er is iets misgegaan!"}
            end
          end
  end

  private

    def message_params
      params.require(:message).permit(:name, :email, :content)
    end

end
