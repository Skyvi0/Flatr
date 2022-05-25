class RemoveUserIdFromFlats < ActiveRecord::Migration[6.1]
  def change
    remove_column :flats, :user_id, :string
  end
end
