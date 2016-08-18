class WelcomeController < ApplicationController
  def index
  	@bins = Bin.all
  end
end
