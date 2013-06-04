require 'debugger'

get '/' do
  erb :index
end

get '/ghost' do
  @user_input = params[:user_input]
  Word.anagrams(@user_input).map! { |w| w.word }.to_json
end 