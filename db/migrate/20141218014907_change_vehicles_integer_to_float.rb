class ChangeVehiclesIntegerToFloat < ActiveRecord::Migration
  def change
  	change_table :vehicles do |v|
  		v.change :purchase_price, :float
  		v.change :sale_price, :float
  	end
  end
end
