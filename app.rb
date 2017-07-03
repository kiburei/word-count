require ('sinatra')
  require ('sinatra/reloader')
  require ('./lib/word_count')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  post('/word_count') do
    word = params.fetch('word').downcase()
    @count = params.fetch('sentence').downcase().word_count(word)
    @word = params.fetch('word')
    @sentence = params.fetch('sentence')
    erb(:index)
  end
