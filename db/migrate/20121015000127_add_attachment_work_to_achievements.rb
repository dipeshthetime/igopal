class AddAttachmentWorkToAchievements < ActiveRecord::Migration
  def self.up
    change_table :achievements do |t|
      t.has_attached_file :work
    end
  end

  def self.down
    drop_attached_file :achievements, :work
  end
end
