class NewslettersController < ApplicationController

  def index
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.create(newsletter_params)
    @newsletter.user_id = current_user.id

    if @newsletter.save
      redirect_to @newsletter
    else
      render :new
    end
  end


  private
  def newsletter_params
    params.require(:newsletter).permit(:title, :sub_title, :summary, :publish_date, :user_id)
  end
end
