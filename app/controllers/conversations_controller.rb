# frozen_string_literal: true

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
class ConversationsController < ApplicationController
  def index
    conversations = Current.user.conversations
    render json: conversations.to_json(include: { sender: {}, receiver: {}, last_message: {} })
  end
end
