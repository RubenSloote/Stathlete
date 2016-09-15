class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params.require(:player).permit(:name))

      if @player.save
        redirect_to game_path(@game)
      end

  end

end
