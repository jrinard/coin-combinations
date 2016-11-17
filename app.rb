require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/result') do
   @quarters = params.fetch('quarters').to_i
   @dimes = params.fetch('dimes').to_i
   @nickles = params.fetch('nickles').to_i
   @result = (params.fetch('user_input_app').to_i).coin_combinations(@quarters, @dimes, @nickles)
   erb(:index)
end
