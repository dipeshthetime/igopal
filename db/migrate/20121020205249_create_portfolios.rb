class CreatePortfolios < ActiveRecord::Migration
  def self.up
    create_table :portfolios do |t|
      t.references :user
      t.string :title
      t.string :variety, :default => "default"
      t.date :start_date
      t.string :intro
      t.timestamps
    end
end
  def self.down
  	drop_table :portfolios
  end
end
