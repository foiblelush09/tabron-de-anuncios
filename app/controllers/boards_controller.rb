class BoardsController < ApplicationController

  def index
    @boards = Board.all
    @boards = Board.all.order(created_at: :desc)
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    board = Board.find(params[:id])
    board.destroy
    redirect_to root_path
  end

  private 
  def board_params
    params.require(:board).permit(:game_title, :text).merge(user_id: current_user.id)
  end
end
