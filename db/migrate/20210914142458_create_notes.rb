class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.string :note_title
      t.datetime :note_date
      t.string :instructor
      t.text :partners, array: true, default: []
      t.text :pos_description
      t.text :neg_description
      t.timestamps
    end
  end
end
