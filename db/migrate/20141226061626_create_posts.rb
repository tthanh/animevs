class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :fansub, index: true
      t.string :title
      t.string :image
      t.string :public

      t.timestamps null: false
    end
    add_foreign_key :posts, :fansubs
  end
end
