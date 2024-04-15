# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  has_secure_password

  def conversations
    @conversations ||= Conversation.where('sender_id = ? OR receiver_id = ?', id, id).order(updated_at: :desc)
  end
end
