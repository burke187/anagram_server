require_relative '../models/word.rb'

get '/' do
  # @user_input = params[:user_input]
  erb :index #go to my homepage and I'm waiting user_input
end

# get '/words/:word' do
#   @results = anagram_for?(params[:word])
#   erb :words
# end

post '/anagrams' do #reserving this address for a specific action
  @user_input = params[:user_input] #~in html <form: name=user_input> 
  @results = anagram_for?(@user_input)
  # redirect "/words/#{params[:user_input]}"
  erb :words #name of the erb file the browser is going to read from
end
