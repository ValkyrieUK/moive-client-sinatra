require 'sinatra'
require 'httparty'

get '/' do
  access_token = '4978765e79e36981bf2ecb0ca00e3d15'
  api_url = "http://localhost:3000/api/movies?access_token=#{access_token}"
  response = HTTParty.get(api_url)
  erb :index, locals: {response: response} 
end