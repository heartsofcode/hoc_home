module EventsHelper

  def prettify(event)
    @formats = []
    @formats << event.start_time.strftime("%d %b %Y")
    @formats << event.start_time.strftime("%R")
    @formats << event.end_time.strftime("%d %b %Y")
    @formats << event.end_time.strftime("%R")
  end
end
