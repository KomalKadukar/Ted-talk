class TedtalksController < ApplicationController
  def index
    @tedtalks = Tedtalk.all
  end

  def show
    @tedtalk = Tedtalk.find(params[:id])
  end

  def results
    @tedtalk_results = Tedtalk.where('title LIKE ?', "%#{params[:query]}%")
  end
end
