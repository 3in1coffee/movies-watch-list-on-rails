class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    # @lists = List.all
  end

  def show
    @movie = Movie.find(params['id'])
  end

  def new
    @movie = Movie.new
  end
end
