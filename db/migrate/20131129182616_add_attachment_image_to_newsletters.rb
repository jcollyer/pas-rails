class AddAttachmentImageToNewsletters < ActiveRecord::Migration
  def self.up
    add_attachment :newsletters, :image
  end

  def self.down
    remove_attachment :newsletters, :image
  end
end
