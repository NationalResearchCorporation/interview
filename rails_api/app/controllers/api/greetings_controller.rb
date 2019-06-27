class Api::GreetingsController < ApplicationController
  def index
    render json: { hello: 'hello!' }
  end
end
