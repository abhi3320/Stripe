class AddColumnToCsv < ActiveRecord::Migration[5.2]
  def change
    add_column :csvs, :file_csv, :string
  end
end
