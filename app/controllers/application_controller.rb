class ApplicationController < ActionController::Base

  private

  def tags
    @tags = Tag.all
  end

  helper_method :tags
end
