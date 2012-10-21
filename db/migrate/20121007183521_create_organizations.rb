class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.references :user
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :url

      t.timestamps
    end
  end
end
