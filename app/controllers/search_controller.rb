class SearchController < ApplicationController
  def index
    @projects = Project.search(params[:search])
  end

  def search
    @tedtalks = Tedtalk.where('title LIKE ?', "%#{params[:query]}%")
  end
end
