class WelcomeController < ApplicationController
  def index
  	message_body = "Full"
    from_number = "+917760639689"
  	@bins = Bin.all



  	@firstBin = Bin.find_by(id: 1)
  	@firstBin.update(status: message_body)
    flash[:message]=@bins.first.status

  end
 skip_before_filter :verify_authenticity_token 
  def reply
  	message_body = params["Body"]
    from_number = params["From"]
    flash[:message]=message_body
  end
end
