class ChangeAchievementsForeignKey < ActiveRecord::Migration
  def up

     change_table :achievements do |t|
         t.references :user
         remove_column :achievements, :portfolio_id
     end
  end

  def down
      change_table :achievements do |t|
       remove_column :achievements, :user_id
       t.references :portfolio
       remove_column :achievements, :portfolio_id
       remove_column :achievements, :achievements_id
   end
  end
end