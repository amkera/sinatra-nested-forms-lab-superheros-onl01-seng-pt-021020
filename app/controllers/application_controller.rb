require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :'../views/super_hero'
    end 
    #Get data, show the initial form called super_hero in views where the user 
    
    post '/teams' do 
      @team_name = params["team"]["name"]
      @team_motto = params["team"]["motto"]
      @team_members = params["team"]["members"]
      erb :'../views/team'
    end 
    #The form should have fields for the name of a superhero team and their motto. This route responds to a post request at /teams. The form sends a post request to this route. 
    


end
