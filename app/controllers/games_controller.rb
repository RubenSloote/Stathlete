class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @players = Player.all
  end

  def create
    @game = Game.find(params[:game_id])
    game_params = params.require( :game ).permit( :name)

    @game = Game.new( game_params )

    if @game.save
      redirect_to @game
    else
      render 'new'
    end
  end
end
