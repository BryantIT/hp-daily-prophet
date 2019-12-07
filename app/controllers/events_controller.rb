class EventsController < ApplicationController

  def index
    if @newsletter = Newsletter.find_by_id(params[:newsletter_id])
        @events = @newsletter.events.all
    else
        @events = Event.all
    end
  end

  def new
    if @newsletter = Newsletter.find_by_id(params[:newsletter_id])
        @event = @newsletter.events.build
    else
        @event = Event.new
    end
  end

  def create
    @event = Event.new(event_params)
    @event.byline = current_user.last_name

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def edit
    @event = Event.find_by_id(params[:id])
  end

  def update
    @event = Event.find_by_id(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find_by_id(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:title, :date, :body, :photo)
  end
end
