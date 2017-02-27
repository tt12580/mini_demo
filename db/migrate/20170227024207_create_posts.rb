class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :city
      t.integer :country

      t.timestamps
    end
  end
end
