# frozen_string_literal: true

class Api::NewsfeedsController < ApplicationController
  def index
    render json: Newsfeed.all.to_json
  end

  def show
    newsfeed = Newsfeed.find(params[:id].to_i)
    render json: newsfeed.to_json
  rescue ActiveRecord::RecordNotFound
    render json: nil, status: :not_found
  end
end
