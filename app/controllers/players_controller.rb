class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    Player.create({name: params[:player][:name], number: params[:player][:number], average: params[:player][:average]})
    redirect_to root_path
  end

end
