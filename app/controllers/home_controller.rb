class HomeController < ApplicationController
  def index
    @notes = Note.where(actived: true)
  end

  def toast; end
end
