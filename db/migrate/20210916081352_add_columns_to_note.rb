class AddColumnsToNote < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :note_title, :string
    add_column :notes, :partners, :string, array: true, default: []
    add_column :notes, :instructors, :string, array: true, default: []
  end
end
