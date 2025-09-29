# frozen_string_literal: true

class VideoGamesController < ApplicationController
  def index
    @games = VideoGame.all
  end

  def new
    @video_game = VideoGame.new
  end

  def create
    @video_game = VideoGame.new(video_game_params)

    if @video_game.save
      flash[:success] = 'New video game successfully added!'
      redirect_to video_games_path
    else
      flash.now[:danger] = 'Video game creation failed.'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @video_game = VideoGame.find(params[:id])
    @video_game.destroy
    flash[:success] = 'Video game successfully removed'
    redirect_to video_games_path
  end

  private

  def video_game_params
    # align with schema + seeds + specs
    params.require(:video_game).permit(:title, :year, :publisher, :genre)
  end
end
