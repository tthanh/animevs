class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :fansub, index: true
      t.string :title
      t.string :image_url
      t.string :public_date

      t.timestamps null: false
    end
    add_foreign_key :tags, :fansubs
  end
end
