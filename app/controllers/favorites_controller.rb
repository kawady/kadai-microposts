class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    fav_id = params[:fav_id]
    current_user.register(fav_id)
    flash[:success] = 'postをお気に入りに登録しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
   fav_id= params[:fav_id]
    current_user.deregister(fav_id)
    flash[:success] = 'postのお気に入りを解除しました。'
    redirect_back(fallback_location: root_path)
  end
end
