class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bm_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    # raise
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def bm_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
