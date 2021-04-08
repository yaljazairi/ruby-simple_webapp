class ItemController < ApplicationController

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
		
		
	end


end