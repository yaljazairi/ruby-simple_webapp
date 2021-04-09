require './config/environment'
require 'json'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    # erb :welcome
		# erb :my_welcome
		wlcm = "Homepage".to_s
  end.to_json

end
