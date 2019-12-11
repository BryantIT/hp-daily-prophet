class ArticlesController < ApplicationController
  def index
    if @newsletter = Newsletter.find_by_id(params[:newsletter_id])
        @articles = @newsletter.articles.all
    else
        @articles = Article.all
    end
  end

  def new
    if @newsletter = Newsletter.find_by_id(params[:newsletter_id])
        @article = @newsletter.articles.build
    else
        @article = Article.new
    end
  end

  def create
    @article = Article.new(article_params)
    @article.byline = current_user.last_name

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.find_by_id(params[:id])
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def update
    @article = Article.find_by_id(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find_by_id(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def my_articles
    @articles = Article.my_articles(current_user)
  end

  private
  def article_params
    params.require(:article).permit(:title, :byline, :body, :newsletter_id, :photo)
  end
end
