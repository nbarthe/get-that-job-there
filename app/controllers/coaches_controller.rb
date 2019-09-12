class CoachesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def index
    @coaches = Coach.where(Coach.arel_table[:city]
    .lower
    .matches("%#{params[:city].downcase}%"))
    if @coaches.present?
      @coaches
    else redirect_to root_path
    end
  end

  def show
    @coach = Coach.find(params[:id])
  end
end
