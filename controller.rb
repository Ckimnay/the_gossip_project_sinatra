
require 'gossip'
class ApplicationController < Sinatra::Base
    get '/' do
    erb :index 
    end

post '/gossips/new/' do
    Gossip.new(@author, @content).save

    end
end
