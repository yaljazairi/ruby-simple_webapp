class ItemController < ApplicationController

	# <=== Creating new Items ===>

	get '/items/new' do
		# erb :'/items/new'
		item = {
			name: params[:name],
			price: params[:price]
		}
	end

	post '/items' do
		# "Process the form"
		# @item = Item.create(
		# 	name: params[:name],
		# 	price: params[:price],
		# )
		# # binding.pry
		# redirect "/items/#{@item.id}"
		
		item = Item.new(params[:item])
		item.save
		redirect '/items'
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
