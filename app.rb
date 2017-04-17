require('sinatra')
require('sinatra/reloader')
require('./lib/num_word')

get('/') do
  erb(:index)
end

post('/results') do
  number = Num_word.new(params.fetch('number').to_i)
  @display = number.change_num()
  erb(:results)
end
