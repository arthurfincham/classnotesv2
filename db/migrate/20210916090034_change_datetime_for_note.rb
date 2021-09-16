class ChangeDatetimeForNote < ActiveRecord::Migration[6.1]
  def change
    change_column :notes, :note_date, :date
  end
end
