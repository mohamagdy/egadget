class AddGadgetIdToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :gadget_id, :integer
  end
end
