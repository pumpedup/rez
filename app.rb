require 'sinatra/base'
require 'sinatra/json'

class Rez < Sinatra::Base
    helpers Sinatra::JSON

    get '/' do 
        json :foo => 'baaaar', :bar => { :get => 'drunk!' }
    end

    run! if app_file == $0
end
