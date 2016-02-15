require "rails_helper"

RSpec.describe "The User's Show Page" do
  it "shows the user's name and email" do
    user = create(:user)
    visit user_path(user)

    expect(page).to have_content(user.name)
    expect(page).to have_content(user.email)
  end

  it "hides the user's name if button is clicked", js: true do
    user = create(:user)
    visit user_path(user)

    click_on "Hide Name"

    expect(page).to_not have_content(user.name)
  end
end
