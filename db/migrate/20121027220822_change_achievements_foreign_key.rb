class ChangeAchievementsForeignKey < ActiveRecord::Migration
  def up

 	change_table :achievements do |t|
 		t.references :user
 		remove_column :achievements, :portfolio_id
 	end
  end

  def down
   remove_column :achievements, :user_id
   add_column :achievements, :portfolio_id

  end

end
