class DropInstructorAndClassFromNotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :instructor
    remove_column :notes, :note_title
  end
end
