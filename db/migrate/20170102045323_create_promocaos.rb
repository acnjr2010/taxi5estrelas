class CreatePromocaos < ActiveRecord::Migration[5.0]
  def change
    create_table :promocaos do |t|
      t.text :texto

      t.timestamps
    end
  end
end
