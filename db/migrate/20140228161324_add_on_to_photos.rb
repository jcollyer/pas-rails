class AddOnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :on, :boolean
  end
end
