class AddDescriptionAndImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :description, :text
    add_column :users, :image_url, :string
  end
end
