class ParamsController < ApplicationController
  def game
    guess = params["guess"].to_i
    number = 36
    if guess == number
      render json: {message: "good job! #{guess} was the correct number"}
    elsif guess < number
      render json: {message: "ooooo too low try again"}
    elsif guess > number 
      render json: {message: "ooooo too high try again"}
    end
  end
  def name
    name = params["name"]
    #render json: name.upcase
    if name[0] == "a"
      message = {message: "HEY YOUR NAME STARTS WITH THE FIRST LETTER OF THE ALPHABET!!!"}
    else
      message = {message: "cool name, ig"}
    end
    render json: message
  end
end
