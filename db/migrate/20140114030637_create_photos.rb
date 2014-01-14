class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
