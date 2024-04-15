class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.references :conversation, null: false, foreign_key: true
      t.text :content
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
