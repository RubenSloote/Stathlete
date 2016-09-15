class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
  end

  def create
    player_params = params.require( :player ).permit( :name)

    @player = Player.new( player_params )

    if @player.save
      redirect_to players_path
    else
      render 'new'
    end
  end

  def destroy
    @player = Player.find(params[:id])

    @player.destroy

    redirect_to players_path
  end
end
