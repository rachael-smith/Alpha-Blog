class ArticlesController < ApplicationController
  before_action :set_article_by_id, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
    flash[:notice] = "Article was successfully deleted"
  end
  private
  def article_params
    params.require(:article).permit(:title, :description)
  end

  def set_article_by_id
    @article = Article.find(params[:id])
  end
end