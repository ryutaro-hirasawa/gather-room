class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.string :text, null: false
      t.text :image, null: false
      t.timestamps
    end
  end
end
