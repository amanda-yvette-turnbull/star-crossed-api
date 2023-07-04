class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.string :participants
      t.string :messages
      t.string :read

      t.timestamps
    end
  end
end
