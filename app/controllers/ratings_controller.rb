class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def to_s
    "tekstiesitys"
  end

end
