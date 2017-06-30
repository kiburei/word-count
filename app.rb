require ('sinatra')
  require ('sinatra/reloader')
  require ('./lib/word_count')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  post('/word_count') do
    word = params.fetch('word')
    @sentence = params.fetch('sentence').word_count(word)
    erb(:result)
  end
