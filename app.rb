require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')
require('pry')


get('/') do
  erb(:home)
end

get('/word') do
  result = params.fetch('weapon').rock_paper_scissors()
  @computer_pick = result[1]
  @result = result[0]
  erb(:result)
end
