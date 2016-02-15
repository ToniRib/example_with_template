require "rails_helper"

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }

  it "has a first name and last name" do
    user = build(:user, name: "Toni Rib")

    expect(user.first_name).to eq("Toni")
    expect(user.last_name).to eq("Rib")
  end
end
