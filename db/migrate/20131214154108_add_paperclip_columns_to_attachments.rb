class AddPaperclipColumnsToAttachments < ActiveRecord::Migration
  def self.up
    add_attachment :attachments, :image
  end

  def self.down
    remove_attachment :attachments, :image
  end
end
