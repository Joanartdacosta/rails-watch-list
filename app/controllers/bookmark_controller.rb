class BookmarkController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def create
    @bookmarks = Bookmark.new(bookmark_params)
    if @bookmarks.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @bookrmark = Bookmark.new
  end

  def destroy
    
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end

end
