require ('sinatra')
require ('sinatra/reloader')
require_relative ('./models/game')

get '/play/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @answer = game.play
  erb(:result)
end

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/play' do
  erb(:play)
end

# get '/:hand1/:hand2' do
#   case
#     when params[:hand1] == 'rock' && params[:hand2] == 'paper'
#       return "Paper wins!"
#     when params[:hand1] == 'paper' && params[:hand2] == 'rock'
#       return "Paper wins!"
#     when params[:hand1] == 'rock' && params[:hand2] == 'scissors'
#         return "Rock wins!"
#     when params[:hand1] == 'scissors' && params[:hand2] == 'rock'
#         return "Rock wins!"
#     when params[:hand1] == 'scissors' && params[:hand2] == 'paper'
#         return "Scissors wins!"
#     else params[:hand1] == 'paper' && params[:hand2] == 'scissors'
#         return "Scissors wins!"
#   end
# end

# get '/scissors/rock' do
#   return "Paper wins!"
# end
#
# get '/scissors/paper' do
#   return "Paper wins!"
# end
#
# get '/paper/rock' do
#   return "Paper wins!"
# end
