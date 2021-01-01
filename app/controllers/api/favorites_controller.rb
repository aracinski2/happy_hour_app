class Api::FavoritesController < ApplicationController
  def index
    @favorites  = Favorite.all
    render 'index.json.jb'
  end
end
