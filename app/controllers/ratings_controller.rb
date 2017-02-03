class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def to_s
    "tekstiesitys"
  end

  def new
    @rating = Rating.new
  end

  def create
    raise
    Rating.create params.require(:rating).permit(:score, :beer_id)
    redirect_to ratings_path
  end

end
