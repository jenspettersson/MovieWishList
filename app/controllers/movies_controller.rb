class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params[:movie])

    if @movie.save
      flash[:notice] = "New movie added!"
      redirect_to movies_path
    else
      render :action => "new"
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update_attributes(params[:movie])
      flash[:notice] = "Movie updated"
      redirect_to movies_path
    else
      render :action => "edit"
    end
  end

end

