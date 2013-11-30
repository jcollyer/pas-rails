class AddYoutubeToMedia < ActiveRecord::Migration
  def change
    add_column :media, :youtube, :string
  end
end
