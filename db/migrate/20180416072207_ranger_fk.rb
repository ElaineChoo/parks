class RangerFk < ActiveRecord::Migration[5.1]
  def change
    remove_column :rangers, :park_id
  end
end
