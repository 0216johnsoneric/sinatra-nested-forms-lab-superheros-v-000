require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      params[:team][:heroes].each {|hero| Superhero.new(hero)}
      @heroes=Superhero.all
    end

    # post '/teams' do
    #   members = params[:team][:members]
    #   @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    #
    #   members.each do |member_params|
    #     SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
    #   end
    #   @super_heroes = SuperHero.all
    #   erb :team
    # end

    # post '/teams' do
    #   @team = Team.new({name: params[:team][:name], motto: params[:team][:motto]})
    #   params[:team][:heroes].each {|hero| Superhero.new(hero)}
    #   @heroes=Superhero.all
    #
    #   erb :team
    # end
end
