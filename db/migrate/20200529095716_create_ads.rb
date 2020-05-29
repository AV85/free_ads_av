class CreateAds < ActiveRecord::Migration[6.0]
  def change
    create_table :ads do |t|
      t.integer :state
      t.string :name
      t.text :text
      t.float :price
      t.references :user

      t.timestamps
    end
  end
end
