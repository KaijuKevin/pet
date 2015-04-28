require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/pet')

get('/') do
  @all_values = Pet.all()
  erb(:index)
end

post('/name') do
  name = params.fetch("name")
  my_pet = Pet.new(name)
  erb(:pet)
end

post('/feed') do
  food = params.fetch('food')
  Pet.feed(food)
  erb(:pet)
end

post('/play') do
  play = params.fetch('play')
  Pet.play(play)
  erb(:pet)
end

post('/reset') do
  Pet.new("")
  erb(:pet)
end
