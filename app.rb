require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pigObject = PigLatinizer.new
        @user_phrase = params[:user_phrase]
        @piglatinized = @pigObject.piglatinize(@user_phrase)

        erb :piglatinizer
    end

end