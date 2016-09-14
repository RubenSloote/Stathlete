class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
  end

  def create
    player_params = params.require( :player ).permit( :name)

    @player = Player.new( player_params )

    if @player.save
      redirect_to game_path(@game)
    end
  end

end
