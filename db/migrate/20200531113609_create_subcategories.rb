class CreateSubcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :subcategories do |t|
      t.references :category, null: false, foreign_key: true
      t.integer :state
      t.string :name

      t.timestamps
    end
  end
end
