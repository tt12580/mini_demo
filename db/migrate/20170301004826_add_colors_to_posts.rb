class AddColorsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :colors, :text
  end
end
