class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(user: current_user)
  end

  def show
  end

  def new
    @appointment = Appointment.new
    @coach = Coach.find(params[:coach_id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @coach = Coach.find(params[:coach_id])
    @user = current_user
    @appointment.user = @user
    @appointment.coach = @coach

    if @appointment.save
      redirect_to user_appointments_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  private

  def appointment_params
    params.require(:appointment).permit(Appointment::ATTRIBUTES)
  end
end
