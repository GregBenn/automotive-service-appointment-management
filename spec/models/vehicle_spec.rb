require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  it "is valid" do
    expect(build(:vehicle)).to be_valid
  end

  it 'should belong to customer' do
    t = Vehicle.reflect_on_association(:customer)
    expect(t.macro).to eq(:belongs_to)
  end
end
