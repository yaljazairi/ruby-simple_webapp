class ItemController < ApplicationController

	# Creating new Items

	get '/items/new' do
		erb :'/items/new'
	end

	post '/items' do
		# "Process the form"
		# @item = Item.create(
		# 	name: params[:name],
		# 	price: params[:price],
		# )
		# # binding.pry
		# # redirect "/items/#{@item.id}"
		# redirect "/items/#{@item.id}"
		
		item = Item.new(params[:item])
		item.save
		redirect '/items'
	end

	# Reading Items

	# Read one Item according to it's id
	get '/items/:id' do
		@item = Item.find(params[:id])
		erb :'items/show'
		end

	# Read all items in Database
	get '/items' do
		@items = Item.all()
		erb :'items/index'
	end


end