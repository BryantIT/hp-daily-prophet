module NewslettersHelper
  def newsletter_event_date
    @newsletter.date.strftime("%m/%d/%Y")
  end


end
