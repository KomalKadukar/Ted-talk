class TedtalksController < ApplicationController
  def index
    @tedtalks = Tedtalk.all
  end

  def show
    @tedtalk = Tedtalk.find(params[:id])
  end
end
