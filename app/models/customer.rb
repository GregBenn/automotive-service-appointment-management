# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :vehicles
  has_many :appointments, through: :vehicles
end
