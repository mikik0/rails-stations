class Admin::MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update]
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

  def edit
    render :edit
  end

  def update
    if @movie.update(movie_params)
      flash[:success] = '映画が更新されました'
      redirect_to admin_movies_path, status: :found
    else
      flash.now[:error] = '映画の更新に失敗しました'
      render :edit
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:name, :year, :description, :image_url, :is_showing)
  end
end
