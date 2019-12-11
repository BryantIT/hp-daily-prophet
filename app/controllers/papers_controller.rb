class PapersController < ApplicationController
  layout "paper"

  def index
    @newsletters = Newsletter.all
  end

  def show
    @newsletter = Newsletter.find_by_id(params[:id])
    @article = Article.find_by_id(params[:id])
  end
end
