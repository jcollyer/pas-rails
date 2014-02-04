class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.text :section
      t.text :sectionb
      t.text :sectionc
      t.text :sectiond

      t.timestamps
    end
  end
end
