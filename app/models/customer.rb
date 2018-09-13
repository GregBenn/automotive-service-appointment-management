# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :vehicles
  has_many :appointments, through: :vehicles

  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true,
                           uniqueness: true,
                           length: { is: 10 },
                           numericality: { only_integer: true }
end
