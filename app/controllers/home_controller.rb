class HomeController < ApplicationController
  def index
    @notes = Note.where(actived: true)
  end
end
