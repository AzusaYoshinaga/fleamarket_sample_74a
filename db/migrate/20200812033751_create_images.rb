class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :item, foreign_key: true
      t.string :src
      t.timestamps
    end
  end
end
