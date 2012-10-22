class AddAttachmentFeatureImageToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.has_attached_file :feature_image
    end
  end

  def self.down
    drop_attached_file :portfolios, :feature_image
  end
end
