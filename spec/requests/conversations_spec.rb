# == Schema Information
#
# Table name: conversations
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  receiver_id :integer
#  sender_id   :integer
#
require 'rails_helper'

RSpec.describe "Conversations", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/conversations/index"
      expect(response).to have_http_status(:success)
    end
  end

end
