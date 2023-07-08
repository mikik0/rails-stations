class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.all
      render :index
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      flash[:success] = '映画が登録されました'
      redirect_to admin_movies_path, status: :found
    else
      flash.now[:error] = '映画の登録に失敗しました'
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :description, :image_url, :is_showing)
  end
end
