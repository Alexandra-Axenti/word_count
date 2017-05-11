require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_count')

get('/') do
  erb(:form)
end

get('/display') do
  @sentence = params.fetch('sentence')
  @word = params.fetch('word')
  @count = @sentence.word_count(@word)
  @partial = @sentence.partial_word_count(@word)
  erb(:display)
end
