class CreateAplicativos < ActiveRecord::Migration[5.0]
  def change
    create_table :aplicativos do |t|
      t.text :app

      t.timestamps
    end
  end
end
