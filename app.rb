require 'sinatra/base'
require './extensions/api'

module Sam
  class Rez < Sinatra::Base
    register Sam::API

    get '/intro', :rel => "introduction", :desc => "A little about Sam" do
      status 500
      json :error => "Not yet implemented"
    end

    get '/history', :rel => "experience", :desc => "An enumeration of past jobs" do
      status 500
      json :error => "Not yet implemented"
    end

    get '/os', :rel => "open_source", :desc => "A list of open source projects and accomplishments" do
      status 500
      json :error => "Not yet implemented"
    end

    get '/contact', :rel => "contact_info", :desc => "Contact Sam!" do
      status 500
      json :error => "Not yet implemented"
    end

    post '/contact', :rel => "contact_info", :desc => "Contact Sam!" do
      status 500
      json :error => "Not yet implemented"
    end

    run! if app_file == $0
  end
end
