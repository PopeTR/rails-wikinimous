class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to articles_path(@article)
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def update
  end

 private

  def article_params
    params.require(:article).permit(:title, :content)
  end


end
