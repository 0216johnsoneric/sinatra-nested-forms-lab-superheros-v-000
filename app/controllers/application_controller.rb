require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:heroes].each {|args| Hero.new(args)}
      @heroes = Hero.all

      erb :team
    end
end

    # post '/teams' do
    #   @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    #   params[:team][:heroes].each {|hero| Superhero.new(hero)}
    #   @heroes=Superhero.all
    # end

end
