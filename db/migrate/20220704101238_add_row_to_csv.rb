class AddRowToCsv < ActiveRecord::Migration[5.2]
  def change
    add_column :csvs, :FirstName, :string
    add_column :csvs, :LastName, :string
    add_column :csvs, :Phone, :integer
    add_column :csvs, :Email, :string
    add_column :csvs, :Zip, :integer
  end
end
