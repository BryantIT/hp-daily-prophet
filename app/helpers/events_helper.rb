module EventsHelper
  def event_date
    @event.date.strftime("%m/%d/%Y")
  end
end
