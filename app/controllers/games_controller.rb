class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @players = Player.all
    @stats = Stat.all
  end

  def new
    @game = Game.new
  end

  def create
    game_params = params.require( :game ).permit( :title)

    @game = Game.new( game_params )

    if @game.save
      redirect_to players_path
    else
      render 'new'
    end
  end

  def destroy
    @game = Game.find(params[:id])

    @game.destroy

    redirect_to games_path
  end


end
