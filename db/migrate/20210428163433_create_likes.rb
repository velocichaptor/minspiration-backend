class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.int :user_id
      t.int :post_id

      t.timestamps
    end
  end
end
