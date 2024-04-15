# frozen_string_literal: true

admin = User.create!(name: 'Admin', email: 'admin@example.com', password: 'password123',
                     password_confirmation: 'password123')

30.times do
  user = User.create!(name: Faker::Name.name_with_middle, email: Faker::Internet.email, password: 'password123',
                      password_confirmation: 'password123')
  conversation = Conversation.create!(sender_id: admin.id, receiver_id: user.id)
  rand(1..30).times do
    rand(1..3).times do
      Message.create!(content: Faker::Lorem.paragraphs(number: 3).join, conversation: conversation, sender_id: admin.id,
                      receiver_id: user.id)
    end
    rand(1..3).times do
      Message.create!(content: Faker::Lorem.paragraphs(number: 3).join, conversation: conversation, sender_id: user.id,
                      receiver_id: admin.id)
    end
  end
end
