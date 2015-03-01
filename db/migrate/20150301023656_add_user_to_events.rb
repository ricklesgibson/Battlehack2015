class AddUserToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :user, index: true
    add_foreign_key :events, :users
    add_column :events, :event_id, :integer
  end
end
