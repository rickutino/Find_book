class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :title
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end
