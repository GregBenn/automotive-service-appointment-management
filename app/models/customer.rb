# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :vehicles
  has_many :appointments, through: :vehicles

#   validate :format_phone_number

#   # validates :phone_number, length: { is: 10 },
#   #                          numericality: { only_integer: true }
#   # after_validation :format_phone_number

private

#   def formatted_phone?
#     errors.add(:base, "Not a Valid Phone Number") unless format_phone_number?
#   end

#   def format_phone_number?
#     phone_number.to_s.gsub(/\D/, "").length == 10
#   end
end


  # fromatting validation for "000-000-0000"
  #                          format: { with: /\d{3}-\d{3}-\d{4}/ }
