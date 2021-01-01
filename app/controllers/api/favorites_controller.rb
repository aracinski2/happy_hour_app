class Api::FavoritesController < ApplicationController
  def index
    @favorites  = Favorite.all
    render 'index.json.jb'
  end

  def create
    @favorite = Favorite.create(
      user_id: current_user.id,
      recipe_id: params[:recipe_id]
    )
    # render 'index.json.jb'
  end
end
