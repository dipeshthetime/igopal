class ChangeAchievementForeignKey < ActiveRecord::Migration
  def self.up
    change_table :achievements do |t|
      t.references :user
      t.remove :portfolio_id
    end
  end
  def self.down
  	change_table :achievements do |t|
  		t.references :portfolio
  		t.remove :user_id
  	end
  end
end
