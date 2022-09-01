require 'sinatra'

set :default_content_type, 'application/json'

class App < Sinatra::Base

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    sum = num1 + num2
    # sum = 1 + 2
    { result: sum }.to_json
    # dice_roll = rand(1..6)
    # {roll: dice_roll}.to_json
  end
  
end

run App
