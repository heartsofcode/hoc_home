class AddShowAllEventsToCalendar < ActiveRecord::Migration[5.1]
  def change
    add_column :calendars, :show_all_events, :boolean, default: false
  end
end
