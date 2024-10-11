class AddDescriptionToChairs < ActiveRecord::Migration[7.2]
  def change
    add_column :chairs, :description, :text
  end
end
