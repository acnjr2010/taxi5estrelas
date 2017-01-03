class AddAvatarToPromocoes < ActiveRecord::Migration[5.0]
  def up
    add_attachment :promocaos, :avatar
    add_attachment :promocaos, :image
  end

  def down
    remove_attachment :promocaos, :avatar
    remove_attachment :promocaos, :image
  end
end
