class BoardsController < ApplicationController

  def index
  end

  private 
  def board_params
    params.require(:borad).permit(:game_title, :text).merge(user_id: current_user.id)
  end
end
