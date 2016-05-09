class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.text :listing_type
      t.text :listing_description
      t.integer :price
      t.integer :number_guest_accomadate
      t.text :country
      t.text :city

      t.timestamps null: false
    end
  end
end
