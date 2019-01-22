class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.string :url
      t.string :thumb_url
      t.text :category_id
      t.timestamps null: false
    end
  end
end
