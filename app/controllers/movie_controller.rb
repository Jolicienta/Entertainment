class MovieController < ApplicationController
  def index
    @movies = Movie.all
  end

  def movies_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end    

  def create
    @movie = Movie.new(movies_params)
    if @movie.save
      flash[:notice] = 'La pelicula se agrego con exito'
      redirect_to :action => 'index'
      return
    else
      flash[:alert] = 'Los campos estan vacios'
      redirect_to :action => 'new'
      return
    end
  end

  def new
    @movie = Movie.new
    render :action => 'new'
    return
  end
end
