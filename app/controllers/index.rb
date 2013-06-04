get '/:word' do
  @word = params[:word]
  @results = Word.anagrams(@word)
  erb :index
end
