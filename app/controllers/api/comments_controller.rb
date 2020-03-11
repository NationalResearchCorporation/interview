class Api::CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def show
    render json: :comments
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end
end
