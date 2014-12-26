class AddLinkToPost < ActiveRecord::Migration
  def change
    add_column :posts, :link, :string, after: :title
  end
end
