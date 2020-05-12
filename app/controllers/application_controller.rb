require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

        get '/' do
            erb :super_hero
        end

        post '/teams' do
            @team = Team.new(params[:team])
            puts @team.motto
            puts @team.name
            params[:team][:heroes].each do |i|
                Hero.new(i)
            end
            @heroes = Hero.all
            erb :team
        end

end
