class Api::FavoritesController < ApplicationController

  before_action :authenticate_user 

  def index
    @favorites  = Favorite.where(user_id: current_user.id)
    render 'index.json.jb'
  end

  def create
    @favorite = Favorite.new(
      user_id: current_user.id,
      recipe_id: params[:recipe_id]
    )
    @favorite.save
    p "favoriteeeeeeeee"
    # render 'index.json.jb'
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    render json: {message: "Favorite has been removed."}
  end
end
