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

get "/vehicles/new" do
	@vehicle = Vehicle.new
	erb :"vehicle/new"
end

post "/vehicles" do
	vehicle = Vehicle.new(params[:vehicle])
	if vehicle.save
		redirect "/"
	else
		erb :"vehicle/new"
	end

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

get "/costs/new/:id" do
	@car_id = params[:id]
	@cost = Cost.new
	erb :"cost/new"
end

post "/costs" do
	cost = Cost.new(params[:cost])
	id = params[:cost][:vehicle_id]
	if cost.save
		redirect "/vehicles/" + id
	else
		erb :"cost/new"
	end

end

get "/costs/destroy/:id" do
	vehicle_id = params[:cost][:vehicle_id]
	if Cost.destroy(params[:id])
		redirect "/vehicles/" + vehicle_id
	end
end