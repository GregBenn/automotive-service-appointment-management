# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :vehicles
  has_many :appointments, through: :vehicles

  validates :phone_number, length: { is: 10 },
                           numericality: { only_integer: true }
end
