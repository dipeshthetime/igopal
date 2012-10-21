class AddColumnsToPortfolio < ActiveRecord::Migration
  def change
  	add_column :portfolios, :title, :string
  	add_column :portfolios, :variety, :string
  	add_column :portfolios, :start_date, :date
  	add_column :portfolios, :intro, :string
  	add_column :portfolios, :unknown, :string
 # 	remove_column :achievements_id
  end
end
