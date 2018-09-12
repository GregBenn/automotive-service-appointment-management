# frozen_string_literal: true

class VehiclesController < ApplicationController
  before_action :find_vehicle, only: %i[show edit update]

  def new
    @customer = Customer.find_by(id: params[:customer_id])
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

      redirect_to new_customer_vehicle_path
    end
  end

  def show
    find_vehicle
  end

  def edit; end

  def update
    @vehicle.update(vehicle_params)
    redirect_to vehicle_path(@vehicle)
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
end
