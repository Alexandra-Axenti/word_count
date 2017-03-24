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
  @sentence.word_count(@word)
  erb(:display)
end
