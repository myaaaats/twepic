class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(twepic_id: params[:twepic_id])
    redirect_to twepics_url, notice: "#{favorite.twepic.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to twepics_url, notice: "#{favorite.twepic.user.name}さんのブログをお気に入り解除しました"
  end
end
