module NewslettersHelper
  def newletter_event_date
    @newletter.date.strftime("%m/%d/%Y")
  end


end
