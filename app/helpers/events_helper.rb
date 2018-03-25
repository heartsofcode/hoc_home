module EventsHelper
  def nicify_date(event)
    event.start_time.strftime("%d %b %Y")
  end
end
