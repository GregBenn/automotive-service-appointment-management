# frozen_string_literal: true

class AppointmentsController < ApplicationController
  before_action :current_user, only: %i[create edit update]
  before_action :find_current_customer, :find_vehicle, only: %i[new edit show]
  before_action :find_appointment, only: %i[show edit update]

  def new
    @appointment = Appointment.new
  end

  def create
    appointment = Appointment.new(appointment_params)
    if appointment.save
      redirect_to customer_path(current_customer_id)
    else
      redirect_to new_customer_vehicle_path
    end
  end

  def show; end

  def edit; end

  def update
    @appointment.update(appointment_params)
    redirect_to customer_path(current_customer_id)
  end

private

  def appointment_params
    params.require(:appointment).permit(
      :scheduled_for,
      :status
    ).merge(
      vehicle_id: current_vehicle_id,
      user_id: current_user.id
    )
  end

  def current_vehicle_id
    params[:vehicle_id]
  end

  def find_vehicle
    @vehicle = Vehicle.find_by(id: params[:vehicle_id])
  end

  def current_customer_id
    params[:customer_id]
  end

  def find_current_customer
    @customer = Customer.find_by(id: params[:customer_id])
  end

  def find_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end
end
