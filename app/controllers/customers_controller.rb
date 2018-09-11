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
      redirect_to new_customer_path
    end
  end

  def show; end

  def edit; end

  def update
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end

private

  def customer_params
    params.require(:customer).permit(:name,
                                     :email,
                                     :phone_number)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end
end
