class MessagesController < ApplicationController
skip_before_filter :verify_authenticity_token
  def reply
  	# message_body = params["Body"]
   #  from_number = params["From"]
    message_body = "hello"
    from_number = "+917760639689"
    flash[:message]=message_body
    redirect_to action: :index, controller: :welcome
    # boot_twilio
    # sms = @client.messages.create(
    #   from: Rails.application.secrets.twilio_number,
    #   to: from_number,
    #   body: "Hello there, thanks for texting me."
    # )
    # render plain: sms.status
  end
  private
 
  def boot_twilio
    account_sid = Rails.application.secrets.twilio_sid
    auth_token = Rails.application.secrets.twilio_token
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end
end
