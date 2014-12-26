class AddPostToTags < ActiveRecord::Migration
  def change
    add_column :tags, :post, :string, after: :id
  end
end
