class ArticlesController < ApplicationController
  def index
    if @newsletter = Newsletter.find_by_id(params[:newsletter_id])
        @articles = @newsletter.articles.all
    else
        @articles = Review.all

  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    @article.user_id = current_user.id

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


  private
  def article_params
    params.require(:article).permit(:title, :byline, :body, :newsletter_id, :photo)
  end
end
end
