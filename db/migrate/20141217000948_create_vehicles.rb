class CreateVehicles < ActiveRecord::Migration
  def change
  	create_table :vehicles do |v|
  		v.string :registration_plate
  		v.string :make
  		v.string :model
  		v.string :chassis_vin
  		v.integer :vehicle_year
  		v.string :fuel_type
  		v.integer :odometer_reading
  		v.string :colour
  		v.integer :cc_rating
  		v.integer :wof_details
  		v.integer :purchase_price
  		v.integer :sale_price
  		v.integer :sale_date
  		v.integer :purchase_date

  		v.timestamps
  	end
  end
end
