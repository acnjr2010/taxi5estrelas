class AddAvatarToHome < ActiveRecord::Migration[5.0]
  def up
    add_attachment :homes, :avatar
  end

  def down
    remove_attachment :homes, :avatar
  end
end
