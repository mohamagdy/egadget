class CreateAttachments < ActiveRecord::Migration
  def up
    create_table :attachments do |t|
      t.timestamps
    end
  end
end
