# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  scope :pending, -> { where(status: "pending") }
  scope :open, -> { where(status: "open") }
  scope :closed, -> { where(status: "closed") }
  scope :cancelled, -> { where(status: "cancelled") }

  validates :scheduled_for, presence: true
  validates :status, presence: true

  # def self.pending
  #   where(status: "pending")
  # end
end
