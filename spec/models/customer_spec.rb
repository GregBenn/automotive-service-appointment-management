require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "is valid" do
    expect(build(:customer)).to be_valid
  end

  it "should have many vehicles" do
    t = Customer.reflect_on_association(:vehicles)
    expect(t.macro).to eq(:has_many)
  end

  it "is invalid without a name" do
    expect(build(:customer, name: "")).to be_invalid
  end

  it "is invalid with a short phone number" do
    expect(build(:customer, phone_number: "3022212")).to be_invalid
  end
end
