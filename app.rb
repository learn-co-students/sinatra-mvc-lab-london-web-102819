require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/' do
        phrase = params[:phrase]
        pr = PigLatinizer.new(phrase)
        @new_phrase = pr.pig_phrase
        erb :results
    end
en#d

