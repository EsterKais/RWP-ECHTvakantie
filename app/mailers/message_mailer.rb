class MessageMailer < ApplicationMailer
  # default from: "Contact <noreply@yourdomain.com>"
  default to: "Vincent <echtvakantie@gmail.com>"

  def new_message(message)
    @message = message

    mail subject: "Message from #{message.name}"
  end

end
