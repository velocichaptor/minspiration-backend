class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :image
      t.text :caption
      t.integer :post_id

      t.timestamps
    end
  end
end
