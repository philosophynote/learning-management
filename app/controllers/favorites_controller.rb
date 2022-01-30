class FavoritesController < ApplicationController
  before_action :logged_in_user
  
  def create
    @micropost = Micropost.find(params[:micropost_id])
    unless @micropost.favorite?(current_user)
      @micropost.increase_favorite(current_user)
      @micropost.reload
      respond_to do |format|
        format.html {redirect_to request.referrer || root_url}
        format.js
      end
    end
  end

  def destroy
    @micropost = Favorite.find(params[:id]).micropost
    if @micropost.favorite?(current_user)
      @micropost.decrease_favorite(current_user)
      @micropost.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end
end
