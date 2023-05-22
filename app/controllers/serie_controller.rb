class SerieController < ApplicationController
  def index
    @series = Series.find(params[:series_id])
  end

  def create
    @series = Series.new(series_params)
  end

  def new
    @serie = Serie.new
  end
end
