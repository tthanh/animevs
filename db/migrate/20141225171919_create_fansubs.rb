class CreateFansubs < ActiveRecord::Migration
  def change
    create_table :fansubs do |t|
      t.string :name
      t.string :homepage

      t.timestamps null: false
    end
  end
end
