class AddDateAndSubtitleToNewsletters < ActiveRecord::Migration
  def change
    add_column :newsletters, :date, :date
    add_column :newsletters, :subtitle, :string
  end
end
