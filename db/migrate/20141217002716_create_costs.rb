class CreateCosts < ActiveRecord::Migration
  def change
  	create_table :costs do |c|
  		c.string :recipient
  		c.integer :price
  		c.belongs_to :vehicle
  		c.timestamps
  	end
  end
end
