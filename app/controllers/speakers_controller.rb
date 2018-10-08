class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
  end

  def show
    @speaker_talks = Speaker.tedtalks
  end
end
