class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.user :name

      t.timestamps null: false
    end
  end
end
