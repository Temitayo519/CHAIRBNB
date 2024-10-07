class CreateChairs < ActiveRecord::Migration[7.2]
  def change
    create_table :chairs do |t|
      t.string :name
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
