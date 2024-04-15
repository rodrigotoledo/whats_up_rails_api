# frozen_string_literal: true

# == Schema Information
#
# Table name: messages
#
#  id              :bigint           not null, primary key
#  content         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  conversation_id :bigint           not null
#  receiver_id     :integer
#  sender_id       :integer
#
# Indexes
#
#  index_messages_on_conversation_id  (conversation_id)
#
# Foreign Keys
#
#  fk_rails_...  (conversation_id => conversations.id)
#
class MessagesController < ApplicationController
  before_action :set_conversation
  attr_accessor :conversation

  def index
    render json: conversation.messages.to_json
  end

  private

  def set_conversation
    self.conversation = Conversation.find_by(id: params[:conversation_id])
  end
end
