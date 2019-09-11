class AppointmentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @appointment = Appointment.new(@coach)
    @user = User.find(params[:user_id])
    @coach = Coach.find(params[:format])
  end

  def create
    raise
  end

  def edit
  end

  private
  def appointment_params
    params.require(:appointment).permit(Appointment::ATTRIBUTES)
  end
end
