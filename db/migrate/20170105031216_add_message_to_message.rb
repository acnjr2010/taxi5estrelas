class AddMessageToMessage < ActiveRecord::Migration[5.0]
  def up
    add_column :messages, :message, :text
  end

  def down
    remove_column :messages, :message, :text
  end
end
