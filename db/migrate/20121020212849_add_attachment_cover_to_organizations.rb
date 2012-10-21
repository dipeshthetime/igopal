class AddAttachmentCoverToOrganizations < ActiveRecord::Migration
  def self.up
    change_table :organizations do |t|
      t.has_attached_file :cover
    end
  end

  def self.down
    drop_attached_file :organizations, :cover
  end
end
