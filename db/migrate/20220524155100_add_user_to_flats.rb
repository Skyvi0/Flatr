class AddUserToFlats < ActiveRecord::Migration[6.1]
  def change
    add_reference :flats, :user, null: false, foreign_key: true
  end
end
