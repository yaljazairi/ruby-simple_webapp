require 'sinatra'
require 'pstore'
require 'yaml'
require 'sinatra/json'

	Movie = PStore.new("movies.pstore")

	def get_all()
		movies = []
		# movies_j= []
		Movie.transaction do
			Movie.roots.each do |data|
				# p data
				# p Movie[data]
				movies << {:data.to_s => Movie["data"].to_s}
			end
			# movies.each do |doc|
			# 	movies_j << {:name => doc["name"] , :genre => doc["genre"]}
			# end
		end
		# return movies_j.to_json
	end

	def post(name, genre)
			Movie.transaction do
				Movie[name]= genre
			end
	end


get '/' do
	"check this endpoint for GET and POST requests: /movies"
end

get '/movies' do
	get_all()
end

post '/movies' do
	params.each do |name, genre|
		post(name,genre)
	end
	"Added Successfully"
end
