# frozen_string_literal: true

class Vehicle < ApplicationRecord
  belongs_to :customer
  has_many :appointments
  has_many :users, through: :appointments
end
