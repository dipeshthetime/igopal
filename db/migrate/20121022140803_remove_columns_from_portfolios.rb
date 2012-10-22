class RemoveColumnsFromPortfolios < ActiveRecord::Migration
  def up
  	remove_column :portfolios, :unknown
  	remove_column :portfolios, :achievements_id
  end

  def down
  	add_column :portfolios, :achievements_id, :integer
  	add_ccolumn :portfolios, :unknown, :string
  end
end
