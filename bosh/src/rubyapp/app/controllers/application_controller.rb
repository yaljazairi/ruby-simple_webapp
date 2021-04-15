require './config/environment'
require 'json'
require 'net/http'
require 'uri'
require 'sinatra/json'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    # erb :welcome
		# erb :my_welcome
		wlcm = "try out /items  or /items/id".to_s
  end.to_json

end
