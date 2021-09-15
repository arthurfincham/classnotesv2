class DropPartnersFromNote < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :partners
  end
end
