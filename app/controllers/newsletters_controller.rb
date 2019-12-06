class NewslettersController < ApplicationController

  def index
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = current_user.newsletters.build(newsletter_params)
    @newsletter.user_id = current_user.id

    if @newsletter.save
      redirect_to @newsletter
    else
      render :new
    end
  end

  def show
    @newsletter = Newsletter.find_by_id(params[:id])
  end

  def edit
    @newsletter = Newsletter.find_by_id(params[:id])
  end

  def update

  end


  private
  def newsletter_params
    params.require(:newsletter).permit(:title, :sub_title, :summary, :publish_date, :user_id)
  end
end
