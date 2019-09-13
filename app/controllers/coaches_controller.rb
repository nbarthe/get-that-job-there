class CoachesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def index
    @coaches = Coach.where(Coach.arel_table[:city]
    .lower
    .matches("#{params[:city].downcase}"))

    unless @coaches.present?
      @coaches = Coach.where(Coach.arel_table[:city]
        .lower
        .matches("%#{params[:city].downcase}%"))
    end
  end

  def show
    @coach = Coach.find(params[:id])
  end
end
