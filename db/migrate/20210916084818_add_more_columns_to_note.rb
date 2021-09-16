class AddMoreColumnsToNote < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :partners, :string
    add_column :notes, :instructors, :string
  end
end
