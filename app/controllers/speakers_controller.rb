class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.order(:name).page(params[:page])
  end

  def show
    @speaker = Speaker.find(params[:id])
  end
end
