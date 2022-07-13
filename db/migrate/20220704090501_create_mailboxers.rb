class CreateMailboxers < ActiveRecord::Migration[5.2]
  def change
    create_table :mailboxers do |t|

      t.timestamps
    end
  end
end
