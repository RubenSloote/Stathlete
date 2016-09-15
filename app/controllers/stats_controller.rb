class StatsController < ApplicationController

    def index
      @stats = Stat.all
      @stat = Stat.new
    end

    def new
      @stat = Stat.new
    end

    def show
      @stat = Stat.find(params[:id])
    end

    def create
      stat_params = params.require( :stat ).permit( :name)

      @stat = Stat.new( stat_params )

      if @stat.save
        redirect_to stats_path
      else
        render 'new'
      end
    end

    def destroy
      @stat = Stat.find(params[:id])

      @stat.destroy

      redirect_to stats_path
    end

end
