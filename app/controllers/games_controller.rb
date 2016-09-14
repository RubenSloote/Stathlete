class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    game_params = params.require( :game ).permit( :title)

    @game = Game.new( game_params )

    if @game.save
      redirect_to @game
    else
      render 'new'
    end
  end
end
