

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do  # url qui permet de créer un ragot
    erb :new_gossip
  end

  
  post '/gossips/new/' do # permet de poster la saisie dans gossip.csv
  Gossip.new(params["gossip_author"], params["gossip_content"]).save # je créé un nouvel objet gossip et je save dans gossip en même temps
  redirect '/'  # une fois sauvegardé, retour sur la homepage
  end

end