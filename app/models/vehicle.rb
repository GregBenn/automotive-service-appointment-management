# frozen_string_literal: true

class Vehicle < ApplicationRecord
  belongs_to :customer
  has_many :appointments
  has_many :users, through: :appointments

  validates :year, presence: true,
                   length: { is: 4 },
                   numericality: { only_integer: true }
  validates :make, presence: true
  validates :model, presence: true
  validates :mileage, presence: true,
                      numericality: { only_integer: true }

  def vehicle_description
    "#{year} #{make} #{model}"
  end
end
