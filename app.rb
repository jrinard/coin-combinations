require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/result') do
   @result = (params.fetch('user_input_app').to_i).coin_combinations()
   erb(:index)
end
