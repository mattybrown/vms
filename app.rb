require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:vms.db"

class Vehicle < ActiveRecord::Base
  has_many :costs, dependent: :destroy
end

class Cost < ActiveRecord::Base
  belongs_to :Vehicle
end

get "/" do	
	@vehicles = Vehicle.order("created_at DESC")
	erb :"vehicle/index"
end

get "/vehicles/:id" do
	@vehicle = Vehicle.find(params[:id])
	cost = 0
	@vehicle.costs.each do |c|
		cost += c.price
	end

	@price = @vehicle.sale_price - @vehicle.purchase_price - cost

	erb :"vehicle/view"
end