class CoachesController < ApplicationController
  def index
    @coaches = Coach.where(city: params[:city])
  end

  def show
    @coach = Coach.find(params[:id])
  end
end
