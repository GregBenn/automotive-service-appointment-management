# frozen_string_literal: true

class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
    # binding.pry
    @customer = Customer.find_by(id: params[:customer_id])
    @vehicle = Vehicle.find_by(id: params[:vehicle_id])
  end
end
