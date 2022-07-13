class RemoveColumnFromFilter < ActiveRecord::Migration[5.2]
  def change
    remove_reference :filters, :csv, foreign_key: true
  end
end
