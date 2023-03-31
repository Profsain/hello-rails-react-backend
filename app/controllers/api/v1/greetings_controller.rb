class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    render json: @greetings
  end

  def random_greeting
    @greeting = Greeting.order('RANDOM()').first
    render json: {message: @greeting.message}
  end
end
