class AddColumnToFilter < ActiveRecord::Migration[5.2]
  def change
    add_column :filters, :name, :string
  end
end
