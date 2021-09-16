class FixColumnNamesInUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :notes, :instructors, :instructor
    rename_column :notes, :partners, :partner
  end
end
