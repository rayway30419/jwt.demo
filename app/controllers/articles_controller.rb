class ArticlesController < ApplicationController
  before_action :authenticate_user

  def index
    render json: Article.all
  end
end
