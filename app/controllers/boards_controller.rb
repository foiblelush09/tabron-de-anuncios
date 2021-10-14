class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  private 
  def board_params
    params.require(:borad).permit(:game_title, :text).merge(user_id: current_user.id)
  end
end
