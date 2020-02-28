class BookmarksController < ApplicationController
  before_action :set_animal_and_bookmark

  def toggle
    if @bookmark.nil?
      @bookmark = Bookmark.new(user: current_user, animal: @animal)
      authorize @bookmark, :create?
      if @bookmark.save
        @created = true
        respond_to do |format|
          format.html {  }
          format.js
        end
      end
    else
      authorize @bookmark, :destroy?
      @bookmark.destroy
      if @bookmark.destroy
        respond_to do |format|
          format.html {  }
          format.js
        end
      end
    end
  end

  private

  def set_animal_and_bookmark
    @animal = Animal.find(params[:animal_id])
    @bookmark = current_user.bookmark_for_animal(@animal)
  end
end
