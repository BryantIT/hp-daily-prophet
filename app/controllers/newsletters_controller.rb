class NewslettersController < ApplicationController

  def index
    if params[:user_id].present?
        @newsletters = Newsletter.my_newsletters(params[:user_id])
    else
        @newsletters = Newsletter.all
    end
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
    @newsletter = Newsletter.find_by_id(params[:id])
    @newsletter.update(newsletter_params)
    redirect_to newsletter_path(@newsletter)
  end

  def destroy
    @newsletter = Newsletter.find_by_id(params[:id])
    @newsletter.destroy
    redirect_to newsletters_path
  end


  private
  def newsletter_params
    params.require(:newsletter).permit(:title, :sub_title, :summary, :date, :user_id)
  end
end
