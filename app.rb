require_relative 'config/environment'


class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        init = PigLatinizer.new
        @piglatinized = init.piglatinize(params[:user_phrase])
        erb :result
    end
end