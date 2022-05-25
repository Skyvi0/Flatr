class RemoveFlatIdFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :flat_id, :string
  end
end
