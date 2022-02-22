class Api::V1::GreetingsController < ApplicationController
  def index
    id = rand(1...Greeting.count)
    @greeting = Greeting.find(id)
    render json: { greeting: @greeting }
  end
end
