class BookmarksController < ApplicationController
  def create
    new_list = List.new(list_params)
    new_list.movie = Movie.find(params[:movie_id])

    if new_list.save
      redirect_to new_list.movie
    else
      #
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
