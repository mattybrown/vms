class UpdateTimeFiels < ActiveRecord::Migration
  def change
  	change_table :vehicles do |v|
  		v.change :sale_date, :datetime
  		v.change :purchase_date, :datetime
  		v.change :wof_details, :datetime
  	end
  end
end
