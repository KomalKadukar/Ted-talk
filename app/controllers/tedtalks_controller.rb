class TedtalksController < ApplicationController
  def index
    # @tedtalks = Tedtalk.all
    @tedtalks = Tedtalk.order(views: :desc).page(params[:page])
  end

  def show
    @tedtalk = Tedtalk.find(params[:id])
  end

  def results
    @tedtalk_results = Tedtalk.where('title LIKE ?', "%#{params[:query]}%")
  end
end
