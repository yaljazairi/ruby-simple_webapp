class CreateItems < ActiveRecord::Migration
  def change
		create_table :items do |item|
			item.string :name
			item.integer :price
		end
  end
end
