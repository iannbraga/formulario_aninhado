class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :price
      t.boolean :active

      t.timestamps
    end
  end
end
