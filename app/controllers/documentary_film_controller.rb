class DocumentaryFilmController < ApplicationController
  def index
    @documentary = Documentary.find(params[:documentary_id])
  end

  def create
    @documentary = Documentary.find(params[:documentary_id])
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end
end
