# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
end
