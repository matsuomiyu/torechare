class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.integer  :sender_id
      t.integer  :recipient_id
      t.integer  :group_id
      t.text     :body
      t.timestamps
    end
  end
end
