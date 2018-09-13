# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :appointments
  has_many :vehicles, through: :appointments
  # has_many :customers, through: :vehicles

  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP }
end
