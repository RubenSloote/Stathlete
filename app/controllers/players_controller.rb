class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  # def create
  #   player_params = params.require( :player ).permit( :title)
  #
  #   @player = Player.new( player_params )
  #
  #   if @player.save
  #     redirect_to @game
  #   else
  #     render 'new'
  #   end
  # end
end
