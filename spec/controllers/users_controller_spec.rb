require "rails_helper"

RSpec.describe UsersController, type: :controller do
  describe "GET #show" do
    it "returns http success" do
      user = create(:user)

      get :show, id: user.id
      expect(response).to have_http_status(:success)
    end
  end
end
