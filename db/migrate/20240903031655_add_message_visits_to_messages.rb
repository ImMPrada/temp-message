class AddMessageVisitsToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :message_visits_count, :integer
  end
end
