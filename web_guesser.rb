require 'sinatra'
require 'sinatra/reloader'

secret_number = rand(100)

get '/' do
  guess = params['guess'].to_i
  message = check_guess(secret_number, guess)
  erb :index, :locals => {:number => secret_number, :guess => guess, :message => message}
end

def check_guess(secret_number, guess)
  if guess == secret_number
    "You got it right! <br> The SECRET NUMBER is #{secret_number}"
  elsif guess > secret_number
    if (guess - secret_number) > 5
      "Way too high!"
    else
      "Too high!"
    end
  elsif guess < secret_number
    if (secret_number - guess) > 5
      "Way too low!"
    else
      "Too low!"
    end
  end
end
