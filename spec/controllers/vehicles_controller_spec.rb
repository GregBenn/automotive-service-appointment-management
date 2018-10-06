require 'rails_helper'

RSpec.describe VehiclesController, type: :controller do
  describe "Vehicle Controller Actions" do
    it "creates a new vehicle" do
      create(:customer)
      expect { create(:vehicle, customer_id: 1) }
        .to change(Vehicle, :count).by(1)
    end
  end
end
