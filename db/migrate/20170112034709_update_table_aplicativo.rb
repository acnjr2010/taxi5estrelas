class UpdateTableAplicativo < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :aplicativos, :avatar
    rename_column :aplicativos, :app, :first_paragraph
    add_column :aplicativos, :second_paragraph, :text
    add_column :aplicativos, :third_paragraph, :text
    add_column :aplicativos, :forth_paragraph, :text
  end
end
