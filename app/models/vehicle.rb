# frozen_string_literal: true

class Vehicle < ApplicationRecord
  belongs_to :customer
end
