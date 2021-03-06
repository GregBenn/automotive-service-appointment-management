# frozen_string_literal: true

class VehiclesController < ApplicationController
  before_action :find_vehicle, only: %i[show edit update]
  before_action :find_current_customer, only: %i[new edit show]

  def new
    find_current_customer
    @vehicle = Vehicle.new
  end

  def index
    @vehicles = Vehicle.all
  end

  def create
    vehicle = Vehicle.new(vehicle_params)
    if vehicle.save
      redirect_to customer_path(current_customer_id)
    else
      flash[:alert] = message
      redirect_to new_customer_vehicle_path
    end
  end

  def show; end

  def edit; end

  def update
    @vehicle.update(vehicle_params)
    # redirect_to customer_path(current_customer_id)
    render json: @vehicle, status: 201
  end

private

  def vehicle_params
    params.require(:vehicle).permit(
      :year,
      :make,
      :model,
      :mileage
    ).merge(customer_id: current_customer_id)
  end

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def current_customer_id
    params[:customer_id]
  end

  def find_current_customer
    @customer = Customer.find_by(id: current_customer_id)
  end

  def message
    "Must have a valid year, make, model, and mileage. Please submit again."
  end
end
