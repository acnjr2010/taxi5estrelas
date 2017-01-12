class RemoveImagesToPromocao < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :promocaos, :avatar
    remove_attachment :promocaos, :image
  end
end
