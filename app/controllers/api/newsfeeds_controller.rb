# frozen_string_literal: true

class Api::NewsfeedsController < ApplicationController
  def index
    render json: Newsfeed.all
  end

  def show
    newsfeed = Newsfeed.find(params[:id].to_i)
    render json: newsfeed, include: [comments: { include: :user }]
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end
end
