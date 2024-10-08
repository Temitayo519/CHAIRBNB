class AddImageUrlToChairs < ActiveRecord::Migration[7.2]
  def change
    add_column :chairs, :image_url, :string
  end
end
