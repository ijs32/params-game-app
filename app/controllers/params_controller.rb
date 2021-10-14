class ParamsController < ApplicationController
  def game
    guess = params["wildcard"].to_i
    number = 36
    if guess == number
      output = {message: "good job! #{guess} was the correct number"}
    elsif guess < number
      output = {message: "ooooo too low try again"}
    elsif guess > number 
      output = {message: "ooooo too high try again"}
    end
    render json: output
  end

  def name
    name = params["wildcard"]
    #render json: name.upcase
    if name[0] == "a"
      message = {message: "HEY YOUR NAME STARTS WITH THE FIRST LETTER OF THE ALPHABET!!!"}
    else
      message = {message: "cool name, ig"}
    end
    render json: message
  end

  def sum
    num1 = params["num1"].to_i
    num2 = params["num2"].to_i
    sum = num1 + num2
    render json: {message: "the sum of your numbers is #{sum}"}
  end

  def guess_game
    guess = params["number"]
    guess = guess.to_i
    secret_number = 32
    if guess == secret_number
      response = "good job."
    elsif guess < secret_number
      response = "too low."
    else 
      response = "too high."
    end
    render json: response
  end
end
