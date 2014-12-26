class AddLinkToTags < ActiveRecord::Migration
  def change
    add_column :tags, :link, :string, after: :title
  end
end
