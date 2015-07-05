class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "an", password: "9", except: [:index, :show]

  def index
    @articles = Article.all
  end
end
