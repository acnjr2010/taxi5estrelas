class AddAvatarToAplicativos < ActiveRecord::Migration[5.0]
  def up
    add_attachment :aplicativos, :avatar
  end

  def down
    remove_attachment :aplicativos, :avatar
  end
end
