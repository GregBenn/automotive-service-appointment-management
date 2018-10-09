# frozen_string_literal: true

class CustomersController < ApplicationController
  before_action :require_logged_in, only: %i[index show edit update]
  before_action :find_customer, only: %i[show edit update]

  def new
    @customer = Customer.new
  end

  def index
    @customers = Customer.all
  end

  def create
    customer = Customer.new(customer_params)
    if customer.save
      redirect_to customer_path(customer)
    else
      flash[:alert] = message
      redirect_to new_customer_path
    end
  end

  def show
    @customer = Customer.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @customer.to_json(only: [:name, :email, :phone_number, :id],
                              include: [vehicles: { only: [:year, :make, :model]}]) }
    end
  end

  def edit; end

  def update
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end

  def vehicle_display
    find_customer
    render inline: vehicle_display_erb
  end

  def customer_data
    find_customer
    render json: @customer.to_json(include: :vehicles)
  end

private

  def customer_params
    params.require(:customer).permit(
      :name,
      :email
    ).merge(phone_number: format_phone_number)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end

  def format_phone_number
    params[:customer][:phone_number].to_s.gsub(/\D/, "").to_i
  end

  def message
    "Must have a name, email, and phone number. Please submit again."
  end

  def vehicle_display_erb
    <<-ERB
    <% @customer.vehicles.each do |vehicle| %>
    <ul>
    <%= link_to vehicle.vehicle_description, customer_vehicle_path(@customer, vehicle) %>
    </ul>
    <% end %>
    ERB
  end
end
