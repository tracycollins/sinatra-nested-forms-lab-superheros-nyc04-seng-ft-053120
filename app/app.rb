class App < Sinatra::Base

    get '/' do
        erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:heros].each do |details|
        Hero.new(details)
      end
    
      @heros = Hero.all
      erb :team

    end

end
