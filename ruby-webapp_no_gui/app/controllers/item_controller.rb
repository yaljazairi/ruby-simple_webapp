class ItemController < ApplicationController

	# <=== Creating new Items ===>

	# get '/items/new' do
		# erb :'/items/new'
		# item = {
		# 	name: params[:name],
		# 	price: params[:price]
		# }
		# item = JSON.parse(request.body.read)
	# end

	post '/items' do
		# "Process the form"
		# @item = Item.create(
		# 	name: params[:name],
		# 	price: params[:price],
		# )
		# # binding.pry
		# redirect "/items/#{@item.id}"
		
		@data = JSON.parse(request.body.read)
		@item = Item.new(name: @data['name'], price: @data['price'])
		@item.save

	end
	# <=== Reading Items ====>

	# << Read one Item according to it's id >>
	get '/items/:id' do
		@item = Item.find(params[:id])
		# erb :'items/show'
			return (@item).to_json
		end

	# << Read all items in Database >>
	get '/items' do
		@items = Item.all()
		# erb :'items/index'
		@items.each do |item|
			item.name
			item.price
		end.to_json
	end
	
end
