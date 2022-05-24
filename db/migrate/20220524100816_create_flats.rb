class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :user_id
      t.string :adress
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
