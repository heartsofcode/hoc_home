class AddCalendatIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :calendar_id, :int
  end
end
