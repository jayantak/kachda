class WelcomeController < ApplicationController
  def index
  	
  	@bins = Bin.all
    @fullBins = Bin.where(binStatus: 'Full')
    @fullBinsCount =Bin.where(binStatus: 'Full').count
    @numOfBins = Bin.count('id')
    @twbin = Bin.find_by(id: 8)

    @addressList = Bin.where(binStatus: 'Full').pluck(:address)

  	@firstBin = Bin.find_by(id: 1)
    flash[:message]=@twbin.binStatus

  end
 skip_before_filter :verify_authenticity_token 
  def reply
    message_body = params["Body"]
    from_number = params["From"]
    @bins = Bin.all
    @fullBins = Bin.where(binStatus: 'Full')
    @fullBinsCount =Bin.where(binStatus: 'Full').count
    @numOfBins = Bin.count('id')
    @twbin = Bin.find_by(id: 8)

    @addressList = Bin.where(binStatus: 'Full').pluck(:address)

    @firstBin = Bin.find_by(id: 1)
    @twbin.update(binStatus: message_body)




  	
    flash[:message]=message_body
  end
end
