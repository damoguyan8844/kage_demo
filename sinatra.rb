require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    "Hello. I'm Sinatra"
  end
end

MyApp.run!
