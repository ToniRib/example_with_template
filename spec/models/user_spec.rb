require "rails_helper"

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }

  it "has a first name and last name" do
    user = build(:user, name: "Toni Rib")

    expect(user.first_name).to eq("Toni")
    expect(user.last_name).to eq("Rib")
  end

  it "creates a user" do
    user = create(:user, name: "Toni Rib")

    expect(User.count).to eq(1)
  end

  it "knows database cleaner is working" do
    user = create(:user, name: "Dan Rib")

    expect(User.count).to eq(1)
  end
end
