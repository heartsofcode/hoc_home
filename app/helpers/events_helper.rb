module EventsHelper

  def nicify_start_date(event)
    event.start_time.strftime("%d %b %Y")
  end
  def nicify_start_time(event)
    event.start_time.strftime("%H:%M")
  end

  def nicify_end_date(event)
    event.end_time.strftime("%d %b %Y")
  end
  def nicify_end_time(event)
    event.end_time.strftime("%H:%M")
  end
  
end
