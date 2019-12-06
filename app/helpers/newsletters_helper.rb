module NewslettersHelper

  def event_date
    @newsletter.publish_date.strftime("%m/%d/%Y")
  end
end
