class HomeController < ApplicationController
  def index
    @notes = Note.actived.order(created_at: :desc).limit(30)
    @note = Note.new
  end

  def toast = nil

  def shuffle
    @qoute = QoutesGenerator.new.random
  end
end
